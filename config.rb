# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :dotenv
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end
require "sprockets/es6"
activate :sprockets do |s|
  s.supported_output_extensions << ".es6"
end

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/
require "evil_icons"
helpers EvilIcons::Helpers

require "lib/view_helpers/evil_icons"
helpers ViewHelpers::EvilIcons

after_configuration do
  sprockets.append_path(EvilIcons.assets_dir)
end

# pages will be accessible without "/index.html" if server supports "index" pages
# i.e. /beliefs/index.html = /beliefs
activate :directory_indexes
