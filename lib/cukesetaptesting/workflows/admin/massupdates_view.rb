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
      keyword(:create_new_contacts) {content.a(:text, 'Create New Contacts')}
      keyword(:mark_contact_final) {content.checkbox(:id, 'finalized')}
      keyword(:new_contact_date) {content.div(:class,'calendarPopup').text_field(:id,'date')}
      keyword(:set_contact_journal_subject) {content.text_field(:id, 'subject')}
      keyword(:set_contact_journal_note) {content.text_field(:id, 'note')}
      keyword(:click_contact) {content.a(:text, 'Contact')}
      keyword(:contact_subject_text) {content.text_field(:name, 'subject')}
      keyword(:contact_note_text) {content.textarea(:name, 'notes')}
      keyword(:contact_delete_button) {content.button(:name, 'delete')}
      keyword(:cannot_mass_update) {content.div(:id,'etap.fieldset.area.1').h3(:class, 'oops')}

      #combo box for setting the contact method
      keyword(:contact_method_type) {content.div(:id,'fields').img(:id, 'refUpdateField(contactMethod)_comboArrow')}
      keyword(:contact_method_combo_list) {content.div(:id,'refUpdateField(contactMethod)_comboAllList')}


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
        content.ul(:id, 'list_categories').link(:text, category)
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
