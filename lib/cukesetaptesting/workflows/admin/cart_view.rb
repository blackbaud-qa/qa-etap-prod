module Cukesetaptesting
  module Admin
    class CartView < BaseView
      keyword(:cart_page_title)  { cart_page.h1(:class,'pageTitle') }
      keyword(:new_category) {cart_page.a(:text,'New Category')}
      keyword(:new_category_name) {cart_category_page.text_field(:id,'categoryName')}
      keyword(:new_category_desc) {cart_category_page.iframe(:id,'description_ifr')}
      keyword(:new_category_desc_align_center) {cart_category_page.div(:id,'mceu_17').div(:id,'mceu_4')}
      keyword(:new_category_start) {cart_category_page.text_field(:id,'publishStartDate')}
      keyword(:new_category_end){cart_category_page.text_field(:id,'publishEndDate')}
      keyword(:new_category_image) {cart_category_page.file_field(:id,'categoryImage')}
      keyword(:new_category_save) {cart_category_page.a(:text,'Save Category')}
      keyword(:cart_category_list) {cart_page.ul(:id,'list_cart')}
      keyword(:new_item) {cart_category_page.a(:text,'New Item')}
      keyword(:new_item_name) {cart_item_page.text_field(:name,'item.name')}
      keyword(:new_item_short_desc) {cart_item_page.iframe(:id,'shortDescription_ifr')}
      keyword(:short_description_increase_indent) {cart_item_page.div(:id,'mceu_44').div(:id,'mceu_37')}
      keyword(:long_description_font_family) {cart_item_page.div(:id,'mceu_17').div(:id,'mceu_11')}
      keyword(:long_description_font_ariel) {content.div(:id,'mceu_55').div(:id,'mceu_57')}
      keyword(:new_item_long_desc) {cart_item_page.iframe(:id,'longDescription_ifr')}
      keyword(:fully_non_deduct) {cart_item_page.table(:id,'financialInfo').radio(:id,'nonDeductibleItem')}
      keyword(:new_item_reg_price) {cart_item_page.text_field(:id,'regularPrice')}
      keyword(:new_item_publish_start) {cart_item_page.text_field(:id,'publishStartDate')}
      keyword(:cart_page_navigation_next) {cart_item_page.button(:id,'nextButton')}
      keyword(:new_item_thumb_image) {cart_item_page.file_field(:id,'thumbImage')}
      keyword(:new_item_reg_image) {cart_item_page.file_field(:id,'regularImage')}
      keyword(:new_item_vendor) {cart_item_page.text_field(:name,'item.vendor')}
      keyword(:new_item_vendor_price) {cart_item_page.text_field(:name,'currencyPopulate(item.vendorPrice)')}
      keyword(:new_item_stock_number) {cart_item_page.text_field(:name,'item.partNumber')}
      keyword(:new_item_unit) {cart_item_page.text_field(:name,'item.unit')}
      keyword(:new_item_id) {cart_item_page.text_field(:name,'item.customId')}
      keyword(:new_item_fund_combo) {cart_item_page.input(:title,'Funds').parent.img(:id,'refPopulate(item.intent)_comboArrow')}
      keyword(:new_item_fund_general) {content.div(:id,'refPopulate(item.intent)_comboAllList').div(:id,'refPopulate(item.intent)_comboAllList_valueRow_39.0.3392')}
      keyword(:new_item_field_name_combo) {cart_item_page.img(:id,'questionField_comboArrow')}
      keyword(:new_item_field_name_test) {content.div(:id,'questionField_comboAllList_valueRow_39.0.1345611')}
      keyword(:new_item_display_text) {cart_item_page.text_field(:id,'questionDisplayText')}
      keyword(:new_item_add_question) {cart_item_page.input(:id,'addQuestionButton')}
      keyword(:cart_category_item_list) {cart_category_page.ul(:id,'list_cart')}
      keyword(:edit_preferences) {cart_page.a(:text,'Edit Cart Preferences')}
      keyword(:edit_cart_next) {cart_edit_page.input(:id,'wizardNavigationNext_1')}
      keyword(:edit_cart_name) {cart_edit_page.text_field(:name,'preferences.siteName')}
      keyword(:edit_cart_welcome_font_color) {cart_edit_page.div(:id,'mceu_19').div(:id,'mceu_13').button(:class,'mce-open')}
      keyword(:edit_cart_welcome_font_color_black) {content.div(:id,'mceu_59').div(:title,'Black')}
      keyword(:edit_cart_welcome) {cart_edit_page.iframe(:id,'welcomeMessage_ifr')}
      keyword(:edit_cart_order_success_bold) {cart_edit_page.div(:id,'mceu_48').div(:id,'mceu_29')}
      keyword(:edit_cart_order_success) {cart_edit_page.iframe(:id,'successMessage_ifr')}
      keyword(:edit_cart_question_field_name) {cart_edit_page.img(:id,'questionField_comboArrow')}
      keyword(:edit_cart_question_account_type) {content.div(:id,'questionField_comboAllList_valueRow_39.0.2667')}
      keyword(:edit_cart_question_display_text) {cart_edit_page.text_field(:id,'questionDisplayText')}
      keyword(:edit_cart_question_add) {cart_edit_page.input(:id,'addQuestionButton')}
      keyword(:edit_cart_email_template) {cart_edit_page.select_list(:name,'refPopulate(preferences.emailTemplate)')}
      keyword(:edit_cart_notification_email) {cart_edit_page.text_field(:name,'preferences.notificationEmail')}
      keyword(:edit_cart_confirmation_sender) {cart_edit_page.text_field(:name,'preferences.confirmationSender')}
      keyword(:edit_cart_default_order_attributes) {cart_edit_page.img(:id,'refPopulate(preferences.itemIntent)_comboArrow')}
      keyword(:edit_cart_default_order_attributes_general) {content.div(:id,'refPopulate(preferences.itemIntent)_comboAllList_valueRow_39.0.3392')}
      keyword(:edit_cart_shipping_attributes) {cart_edit_page.img(:id,'refPopulate(preferences.shippingIntent)_comboArrow')}
      keyword(:edit_cart_shipping_attributes_general) {content.div(:id,'refPopulate(preferences.shippingIntent)_comboAllList_valueRow_39.0.3392')}
      keyword(:edit_cart_transaction_processor) {cart_edit_page.select_list(:name,'refPopulate(preferences.namedTransactionProcessor)')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def cart_page
        content.div(:id,'shoppingCartPage')
      end

      def cart_category_page
        content.div(:id,'cartCategory')
      end

      def cart_item_page
        content.div(:id,'shoppingCartItemPage')
      end

      def cart_edit_page
        content.form(:name,'cartPreferencesWizardForm')
      end
    end
  end
end
