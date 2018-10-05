module Structural
  module Model
    class Field
      module IvarName
        def self.included(base)
          base.extend(self)
        end

        def safe_name
          if name_ends_with_question_mark?
            name_without_question_mark
          else
            name
          end
        end

        private

        def name_ends_with_question_mark?
          name.last == '?'
        end

        def name_without_question_mark
          name.gsub(/\?$/, '_question_mark')
        end
      end
    end
  end
end
