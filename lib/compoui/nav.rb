module Compoui
  class Nav
    # include ::ActionView::Context
    def initialize
    end

    def render
      template.render self
    end

    def template
      @template || Compoui.current_template
    end
  end
end