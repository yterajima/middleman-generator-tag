module Middleman
  module GeneratorTag
    class Extension < ::Middleman::Extension
      def initialize(app, options_hash = {}, &block)
        super

        tag = generator_tag
        app.after_render do |content, path, locs|
          if /<html>/ =~ content
            html = Nokogiri::HTML(content)

            if html.css("meta[name='generator']").length == 0
              title = html.at_css('title')

              meta = Nokogiri::XML::Node.new "meta", html
              meta[:name]    = 'generator'
              meta[:content] = "Middleman v#{::Middleman::VERSION}"
              title.add_next_sibling(meta)
              content = html.to_s
            end
            content
          end
        end
      end

      def generator_tag
        "<meta name=\"generator\" content=\"Middleman v#{::Middleman::VERSION}\">"
      end
    end
  end
end
