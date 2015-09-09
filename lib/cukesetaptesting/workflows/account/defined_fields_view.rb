module Cukesetaptesting
  module Account
    class DefinedFieldsView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      def udf_value_by_key udf_key_name
        udf_value = ''

        udfs = content.div(:class=>'taskContentRight').links(:class=>'udfName')

        udfs.each do |udf_name|
          udf_name_text = udf_name.text
          udf_name_text.gsub!(':', '')

          if udf_name_text == udf_key_name
            udf_value = udf_name.parent.span.text
          end
        end

        return udf_value
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
