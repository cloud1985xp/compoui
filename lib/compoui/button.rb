module Compoui
  class Button
    def initialize(*args)
      @options = args.extract_options!
    end
  end
end