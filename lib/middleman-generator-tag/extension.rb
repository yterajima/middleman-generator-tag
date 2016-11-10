module Middleman
  module GeneratorTag
    class Extension < ::Middleman::Extension
      def initialize(app, options_hash = {}, &block)
        super

        extension = self
        app.after_render do |content|
          if %r{</html>} =~ content
            html = Nokogiri::HTML(content)
            if html.css("meta[name='generator']").length.zero?
              content = extension.insert_tag(html)
            end
          end
          content
        end
      end

      def insert_tag(html)
        title = html.at_css('title')
        meta  = Nokogiri::XML::Node.new 'meta', html
        meta[:name]    = 'generator'
        meta[:content] = "Middleman v#{::Middleman::VERSION}"
        title.add_next_sibling(meta)
        html.to_s
      end
    end
  end
end
