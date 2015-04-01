module Middleman
  module GeneratorTag
    class Extension < ::Middleman::Extension
      def initialize(app, options_hash = {}, &block)
        super

        tag = generator_tag
        app.after_render do |content, path, locs|
          if /<html>/ =~ content.to_s
            content.sub!(/<\/head>/, "#{tag}\n</head>")
          end
        end
      end

      def generator_tag
        "<meta name=\"generator\" content=\"Middleman v#{::Middleman::VERSION}\">"
      end
    end
  end
end
