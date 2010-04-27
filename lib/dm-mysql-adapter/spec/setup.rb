require 'dm-mysql-adapter'
require 'dm-core/spec/setup'

module DataMapper
  module Spec
    module Adapters

      class MysqlAdapter < Adapter
      end

      use MysqlAdapter

    end
  end
end
