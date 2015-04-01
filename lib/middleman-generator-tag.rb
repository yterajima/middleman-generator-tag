require 'middleman-core'
require 'middleman-generator-tag/version'

::Middleman::Extensions.register(:generator_tag) do
  require 'middleman-generator-tag/extension'
  ::Middleman::GeneratorTag::Extension
end
