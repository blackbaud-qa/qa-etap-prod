module Cukesetaptesting
  module Admin
    class MassupdatesView < BaseView
      keyword(:mass_updates_title)  {content.div(:id, 'massUpdatesListPage').h1(:class,'pageTitle')}
      keyword(:mass_update_link) {content.div(:id, 'managementPageTop').a(:text, 'Mass Update')}
      keyword(:update_existing_accounts_link) {content.a(:text, 'Update Existing Accounts')}
      keyword(:select_query_category_value) {content.select(:id, 'select.query.category.1')}
      keyword(:select_the_query_value) {content.select(:id, 'select.query.1')}
      keyword(:account_type_udf) {content.a(:text, 'Account Type')}
      keyword(:mass_update_next) {content.button(:id, 'wizardNavigationNext_1')}
      keyword(:accounts_to_update) {content.div(:id, 'etap.fieldset.area.1').span(:class, 'previewCount')}
      keyword(:mass_update_results) {content.div(:id,'finishStep').div(:class, 'informationSuccess')}
      keyword(:select_remove) {content.radio(:id, 'updateRemove')}
      keyword(:query_preview_results) {content.div(:id, 'etap.fieldset.area.1').td(:class, 'pageResults')}


      def constituent_account_to_click(name)
        content.link(:text, name)
      end

      def udf_to_click(udf)
        content.link(:text, udf + ':')
      end

      def constituent_page_to_click(name)
        content.link(:text, name)
      end

      def click_query_category(category)
        content.link(:text, category)
      end

      def click_query(query)
        content.link(:text, query)
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
