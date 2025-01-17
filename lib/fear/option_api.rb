# frozen_string_literal: true

require "fear/option"

module Fear
  module OptionApi
    # An +Option+ factory which creates +Some+ if the argument is
    # not +nil+, and +None+ if it is +nil+.
    # @param value [any]
    # @return [Fear::Option<any>]
    #
    # @example
    #   Fear.option(nil) #=> #<Fear::None>
    #   Fear.option(17) #=> #<Fear::Some get=17>
    #
    def option(value)
      if value.nil?
        none
      else
        some(value)
      end
    end

    # @return [Fear::None]
    # @example
    #   Fear.none #=> #<Fear::None>
    #
    def none
      Fear::None
    end

    # @param value [any]
    # @return [Fear::Some]
    # @example
    #   Fear.some(17) #=> #<Fear::Some get=17>
    #   Fear.some(nil) #=> #<Fear::Some get=nil>
    #
    def some(value)
      Fear::Some.new(value)
    end
  end
end
