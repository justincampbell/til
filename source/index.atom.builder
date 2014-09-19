xml.instruct!
xml.feed('xml:lang' => 'en-US', xmlns: 'http://www.w3.org/2005/Atom') do |feed|
  feed.id 'tag:justincampbell.me,2005:/til'
  feed.title site_name
  feed.updated things.first.date
  feed.link rel: 'alternate', type: 'text/html', href: url
  feed.link rel: 'self', type: 'application/atom+xml', href: url('index.atom')

  things.each do |thing|
    feed.entry do |entry|
      entry.id thing.slug
      entry.link rel: :alternate, type: 'text/html', href: url(thing.slug)
      entry.published thing.date.iso8601
      entry.title thing.title
      entry.updated thing.date.iso8601
      entry.url url(thing.slug)

      entry.author do |author|
        author.name author_name
        author.email author_email
      end

      entry.content markdown(remove_frontmatter(File.read(thing.source_file))), type: :html
    end
  end
end
