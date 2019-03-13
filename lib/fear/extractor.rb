require 'dry/struct'
require 'treetop'
require 'fear/extractor/grammar'
Treetop.load File.expand_path('extractor/grammar.treetop', __dir__)

module Fear
  module Extractor
    module Types
      include Dry::Types.module
    end

    autoload :Pattern, 'fear/extractor/pattern'
    autoload :Matcher, 'fear/extractor/matcher'
    autoload :IntegerMatcher, 'fear/extractor/integer_matcher'
    autoload :ArrayListMatcher, 'fear/extractor/array_list_matcher'
    autoload :EmptyListMatcher, 'fear/extractor/empty_list_matcher'
    autoload :ArrayHeadMatcher, 'fear/extractor/array_head_matcher'
    autoload :ArraySplatMatcher, 'fear/extractor/array_splat_matcher'
    autoload :AnonymousArraySplatMatcher, 'fear/extractor/anonymous_array_splat_matcher'
  end
end
