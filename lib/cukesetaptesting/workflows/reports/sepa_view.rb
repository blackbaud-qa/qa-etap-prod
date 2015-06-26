module Cukesetaptesting
  module Reports
    class SepaView < BaseView
      keyword(:next)  { content.button(:value,'Next')}
      keyword(:error_popup) {content.div(:class,'popupWindow')}
      keyword(:pop_up_ok) {error_popup.button(:id,'id')}
      keyword(:retries_only) {content.radio(:value,'retry')}
      keyword(:reg_sched_dd_retries) {content.radio(:value,'all')}
      keyword(:standard) {content.radio(:value,'standard')}
      keyword(:live) {content.radio(:value,'live')}
      keyword(:process_date) {content.text_field(:id,'processDate')}
      keyword(:custom) {content.radio(:value,'custom')}
      keyword(:custom_category) {content.select(:name,'queryCategory')}
      keyword(:query_cat) {content.select(:name,'queryQuery')}
      keyword(:this_month_gift) {content.radio(:value,'this')}
      keyword(:first_one_off) {content.checkbox(:id,'firstAndOneOff')}
      keyword(:export_table) {content.table(:id,'etapreporttag1')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
