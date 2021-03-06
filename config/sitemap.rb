# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://hidden-beyond-10811.herokuapp.com"
SitemapGenerator::Sitemap.create do
  add root_path, :priority => 0.7, :changefreq => 'monthly'
  add 'index/1', :priority => 0.9, :changefreq => 'weekly'
  add 'index/2', :priority => 0.9, :changefreq => 'weekly'
  add 'index/3', :priority => 0.9, :changefreq => 'weekly'
  add 'index/4', :priority => 0.9, :changefreq => 'weekly'


  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
