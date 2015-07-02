module Cukesetaptesting
  module Management
    class MyOrgView < BaseView
      keyword(:federal_id)  {content.text_field(:name=>'federalTaxIdNumber')}
      keyword(:save_and_personas) {content.button(:class=>'saveAndButton')}
      keyword(:my_org_prefs) {content.a(:text=>'Preferences')}
      keyword(:IBAN) {content.text_field(:id=>'netherlandsIBAN')}
      keyword(:BIC) {content.text_field(:id=>'netherlandsBIC')}
      keyword(:cancellation_terms)  {content.text_field(:name=>'prefs.netherlandsCancellationTerms')}
      keyword(:rec_trans_desc)  {content.text_field(:name=>'prefs.netherlandsRecurringTransactionDescription')}
      keyword(:export_batch_size) {content.text_field(:name=>'prefs.netherlandsBatchSize')}
      keyword(:bank_account_number) {content.text_field(:name=>'prefs.netherlandsBankAccountNumber')}
      keyword(:org_short_name) {content.text_field(:name=>'prefs.netherlandsOrganizationShortName')}



      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
