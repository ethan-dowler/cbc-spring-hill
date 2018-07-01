# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

require 'sprockets/es6'
activate :sprockets do |s|
  s.supported_output_extensions << '.js'
end

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/
require "lib/icon_helpers"
helpers IconHelpers

# pages will be accessible without "/index.html" if server supports "index" pages
# i.e. /beliefs = /beliefs/index.html
activate :directory_indexes

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
