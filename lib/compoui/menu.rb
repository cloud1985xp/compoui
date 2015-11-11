module Compoui
  class Menu
    include ActionView::Context
    include ActionView::Helpers
    # include Compoui::Containable

    # contain :anchor

    attr_reader :items

    def initialize(*args)
      @options = args.extract_options!
      @args = args
      # @items = []
      # @items << Compoui::Sitemap::Node.new()
      # @items << OpenStruct.new(name: 'hello', path: '/abcdefg')
    end

    def to_s
      render
    end

    def append
      @items << con
    end

    def prepend
      @items.unshift item
    end

    def render
      content_tag(:ul) {
        items.map { |item|
          content_tag(:li){
            link_to(item.name, item.path)
          }
        }.reduce(&:+)
      }
    end
  end
end