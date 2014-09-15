set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :slim, layout_engine: :slim

# page '/feed.xml', layout: false

activate :blog do |blog|
  # blog.layout = "post.html"
  blog.permalink = "{slug}"
  # blog.publish_future_dated = true
  blog.sources = "things/{slug}.html"
  # blog.tag_template = "tag.html"
  # blog.taglink = "tag/{tag}"
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
end
