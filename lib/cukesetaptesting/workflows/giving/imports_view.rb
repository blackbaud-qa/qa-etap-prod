module Cukesetaptesting
  module Giving
    class ImportsView < BaseView
      keyword(:imports_page_title)  { content.div(:class, 'contentBodyDiv').div(:class, 'pageTitle') }
      keyword(:managment_import) {content.div(:id,'managementPageTop').a(:text,'Import')}
      keyword(:new_import) {content.a(:text,'New Import')}
      keyword(:new_import_name) {content.text_field(:id,'importDefinition.name')}
      keyword(:new_import_choose_file) {content.file_field(:id,'importFile')}
      keyword(:type_to_import) {content.select(:id,'importTypeSelector')}
      keyword(:import_country) {content.select(:id,'countrySelect')}
      keyword(:import_next) {content.button(:value,'Next')}
      keyword(:import_another_field) {content.a(:text,'Import Another eTapestry Field')}
      keyword(:import_fields_pop_up) {content.span(:text,'Select eTapestry Field').parent.parent}
      # keyword(:import_address_lines) {import_fields_pop_up.a(:text,'Address Lines')}
      # keyword(:mapping_table_row) {content.table(:id,'mappingTable0').}
      keyword(:import_mapping_pop_up) {content.div(:id,'formulaPopupContents')}
      keyword(:import_summary_title) {content.h3(:text,'Import Summary')}
      keyword(:confirm_delete) {content.button(:value,'Yes')}

      def mapping_table_row field
          content.table(:id,'mappingTable0').td(:text,field).parent
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
