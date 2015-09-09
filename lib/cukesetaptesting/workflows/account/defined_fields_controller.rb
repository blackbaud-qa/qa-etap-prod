module Cukesetaptesting
  module Account
    class DefinedFields < BaseController
      @model = DefinedFieldsModel
      @view = DefinedFieldsView


      def udf_value_by_key udf_key_name
        @view.udf_value_by_key udf_key_name
      end
    end
  end
end

