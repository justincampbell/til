Slim::Engine.disable_option_validator!

Time.zone = 'Eastern Time (US & Canada)'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :slim, layout_engine: :slim

# page '/feed.xml', layout: false

activate :blog do |blog|
  blog.layout = "thing.html"
  blog.permalink = "{slug}"
  blog.sources = "things/{slug}.html"
end

configure :build do
  activate :asset_hash, exts: %w[css js]
  activate :directory_indexes
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-5973800-7'
end

require 'rouge/plugins/redcarpet'
class MarkdownRenderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end

helpers do
  def feedburner_url
    "http://feeds.feedburner.com/justincampbell/til"
  end

  def site_name
    "Today, I Learned..."
  end

  def things
    blog.articles
  end

  def title
    current_page.data.title || site_name
  end

  def markdown(md, options={})
    redcarpet = Redcarpet::Markdown.new(
      MarkdownRenderer,
      autolink: true,
      fenced_code_blocks: true
    )

    md = link_twitter_usernames(md)

    html = redcarpet.render md

    unless options[:add_header_levels] == false
      # Add 3 levels to header tags, so that # becomes h4
      html.gsub!(/<(\/?)h(\d)>/) { |_| "<#{$1}h#{$2.to_i + (options[:add_header_levels] or 3)}>" }
    end

    more = "\n\n<hr />"
    html = options[:preview] ? html.split(more)[0] : html.gsub(more, "")

    # raw html
  end

  def link_twitter_usernames(markdown)
    code_block = false
    last_letter = ""

    result = markdown.split("").inject("") { |buffer, letter|
      code_block = !code_block if letter == "`"
      letter.prepend "twitter:" if not code_block and letter == "@" and last_letter.empty?
      last_letter = letter.strip
      buffer << letter
    }

    twitter_url_prefix = "https://twitter.com/intent/user?screen_name="

    result.gsub(/twitter:@(\w+)/, "[@\\1](#{twitter_url_prefix}\\1)")
  end
end
