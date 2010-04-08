require 'do_mysql'
require 'dm-do-adapter'

module DataMapper
  module Adapters

    class MysqlAdapter < DataObjectsAdapter

      module SQL #:nodoc:

        IDENTIFIER_MAX_LENGTH = 64

        private

        # @api private
        def supports_default_values? #:nodoc:
          false
        end

        # @api private
        def supports_subquery?(query, source_key, target_key, qualify)
          # TODO: renable once query does not include target_model for deletes and updates
          # query.limit.nil?

          false
        end

        # @api private
        def regexp_operator(operand)
          'REGEXP'
        end

        # @api private
        def quote_name(name)
          "`#{name[0, self.class::IDENTIFIER_MAX_LENGTH].gsub('`', '``')}`"
        end

      end

      include SQL

    end

    const_added(:MysqlAdapter)

  end
end
