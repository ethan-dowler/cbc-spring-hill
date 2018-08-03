activate :dotenv

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

require "sprockets/es6"
activate :sprockets do |s|
  s.supported_output_extensions << ".es6"
end

require "evil_icons"
require "lib/view_helpers/evil_icons"
helpers EvilIcons::Helpers
helpers ViewHelpers::EvilIcons
after_configuration do
  sprockets.append_path(EvilIcons.assets_dir)
end

activate :directory_indexes
