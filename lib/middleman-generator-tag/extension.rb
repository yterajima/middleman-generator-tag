module Middleman
  module GeneratorTag
    class Extension < ::Middleman::Extension
      def initialize(app, options_hash = {}, &block)
        super

        extension = self
        app.after_render do |content|
          content = extension.insert_tag(content) if html?(content) && !generator?(content)
          content
        end
      end

      def insert_tag(content)
        html = Nokogiri::HTML(content)
        title = html.at_css('title')
        meta  = Nokogiri::XML::Node.new 'meta', html
        meta[:name]    = 'generator'
        meta[:content] = "Middleman v#{::Middleman::VERSION}"
        title.add_next_sibling(meta)
        html.to_s
      end

      private

      def html?(content)
        %r{</html>} =~ content
      end

      def generator?(content)
        html = Nokogiri::HTML(content)
        html.css("meta[name='generator']").length.positive?
      end
    end
  end
end
