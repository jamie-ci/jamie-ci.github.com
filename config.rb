require 'core_ext/middleman'

###
# Jamie
###
set :base_url, 'jamie-ci.github.com'

###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

# Change Compass configuration
compass_config do |config|
  config.output_style = :compressed
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# This is a hack to dynamically write out the CNAME. When https://github.com/middleman/middleman/issues/742
# is resolved, this can be changed to whatever syntax is supported
# proxy '/CNAME', '/index.html', layout: 'CNAME', directory_indexes: false

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Ignore file extensions
activate :directory_indexes

# Enable syntax highlighting
activate :syntax
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

# Setup deployment
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'master'
end

# Methods defined in the helpers block are available in templates
helpers do
  # Override the link_to method to automatically add the 'active' class to
  # our current resource.
  def link_to(*args, &block)
    resource_index = block_given? ? 0 : 1
    options_index  = block_given? ? 1 : 2

    args[options_index] ||= {}

    if args[resource_index].respond_to?(:destination_path)
      if args[resource_index].destination_path == request.path
        new_classes = args[options_index][:class].try(:split, ' ') || []
        new_classes.push('active')

        args[options_index][:class] = new_classes.join(' ')
      end
    end

    super
  end
end

set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'


# Build-specific configuration
configure :build do
  # Gzip files
  activate :gzip

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Enable asset hash
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
