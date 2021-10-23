require 'forwardable'
module Jsonapi
  module Swagger
    class JsonapiResource
      extend Forwardable

      def_delegators :@jr, :_attributes, :_relationships, :sortable_fields,
                           :creatable_fields, :updatable_fields, :filters, :mutable?
      def_delegator :@jr, :fetchable_fields

      def initialize(jr)
        @jr = jr
      end

      alias attributes _attributes
      alias relationships _relationships
    end
  end
end
