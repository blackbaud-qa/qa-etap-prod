When(/^I click on new Category on the cart page$/) do
  cart = Admin::Cart.new
  cart.new_category_click
  #pending
end

When(/^I rename the existing category to prevent automation errors/) do
  cart = Admin::Cart.new
  if(cart.category_exists? 'Automation Cat 1')
    cart.category_click('Automation Cat 1')
    name = 'Category'+((0...8).map { (65 + rand(26)).chr }.join)
    step "I name it '#{name}' on create cart category"
    step "I click on Save Category on create cart category"
  end
end

When(/^I name it '([^']*)' on create cart category$/) do |name|
  cart = Admin::Cart.new(:new_category_name => name)
  cart.create
  #pending # express the regexp above with the code you wish you had
end

When(/^I put in a description called '([^']*)' on create cart category$/) do |name|
  cart = Admin::Cart.new()
  cart.set_category_def(name)
  #pending # express the regexp above with the code you wish you had
end

When(/^I click on Align Center on create cart category$/) do
  cart = Admin::Cart.new()
  cart.category_desc_align_center_click

  #pending # express the regexp above with the code you wish you had
end

When(/^I click on start date of today on create cart category$/) do
  cart = Admin::Cart.new(:new_category_start => Date.today.strftime('%x'))
  cart.create

end

When(/^I select a file under Category Image on create cart category$/) do
  cart = Admin::Cart.new()
  cart.set_category_image(Watirmark::Configuration.instance.image_path)
end

When(/^I click on Save Category on create cart category$/) do
  cart = Admin::Cart.new()
  cart.new_category_save_click
end

When(/^I click on '([^']*)' on the cart page/) do |category|
  cart = Admin::Cart.new()
  cart.category_exists?(category)
  cart.category_click(category)

end

When(/^I click on new item under Tasks on the cart page$/) do
  cart = Admin::Cart.new()
  cart.new_item_click
end

When(/^I type '([^']*)' in the name field on the cart item page$/) do |name|
  cart = Admin::Cart.new(:new_item_name => name)
  cart.create
end


When(/^I type '([^']*)' in the short description field on the cart item page/) do |desc|
  #pending
  cart = Admin::Cart.new()
  cart.set_short_description(desc)
end

When(/^I highlight the text in the short description field on the cart item page/) do
  cart = Admin::Cart.new()
  cart.select_short_description_text
end

When(/^I click on increase indent in the short description field on the cart item page/) do
  cart = Admin::Cart.new()
  cart.short_description_increase_indent_click
end

When(/^I click Font Family in the long description field on the cart item page/) do
  cart = Admin::Cart.new()
  cart.long_description_font_family_click
end

When(/^I click on Ariel Black under Font Family in the long description field on the cart item page/) do
  cart = Admin::Cart.new()
  cart.long_description_font_ariel_click
end

When(/^I type '([^']*)' in the Long Description box on the cart item page/) do |desc|
  cart = Admin::Cart.new()
  cart.set_long_description(desc)
end

When(/^I choose from Financial Information, Item-Deductibility, Fully Non-Deductible on the cart item page/) do
  cart = Admin::Cart.new()
  cart.fully_non_deduct_click
end

When(/^I type in regular price of '([^']*)' on the cart item page/) do |price|
  cart = Admin::Cart.new(:new_item_reg_price => price)
  cart.create
  # cart.set_regular_price(price)
end

When(/^I click on Start date of today under Publish Information on the cart item page/) do
  cart = Admin::Cart.new(:new_item_publish_start => Date.today.strftime('%x'))
  cart.create
end

When(/^I click on Next on the cart item page/) do
  cart = Admin::Cart.new()
  cart.cart_page_navigation_next_click
end

When(/^I select a file under Thumb on the cart item page/) do
  cart = Admin::Cart.new()
  cart.set_cart_item_thumb_image(Watirmark::Configuration.instance.image_path)
end

When(/^I select a file under Regular on the cart item page/) do
  cart = Admin::Cart.new()
  cart.set_cart_item_regular_image(Watirmark::Configuration.instance.image_path)
end

When(/^I type in '([^']*)' in the Vendor field on the cart item page/) do |vendor|
  cart = Admin::Cart.new(:new_item_vendor => vendor)
  cart.create
end

When(/^I type in Vendor price of '([^']*)' on the cart item page/) do |price|
  cart = Admin::Cart.new(:new_item_vendor_price => price)
  cart.create
end

When(/^I type in stock number '([^']*)' on the cart item page/) do |stock|
  cart = Admin::Cart.new(:new_item_stock_number => stock)
  cart.create
end

When(/^I type in Unit '([^']*)' on the cart item page/) do |unit|
  cart = Admin::Cart.new(:new_item_unit => unit)
  cart.create
end

When(/^I type in ID '([^']*)' on the cart item page/) do |id|
  cart = Admin::Cart.new(:new_item_id => id)
  cart.create
end

When(/^I chose Fund General under Transaction Attributes/) do
  cart = Admin::Cart.new()
  cart.fund_combo_click
  cart.fund_general_click
end

When(/^I click on the drop down box next to field name on the cart item page/) do
  cart = Admin::Cart.new()
  cart.field_name_combo_click
end

When(/^I choose Test on the field combo box on the cart item page/) do
  cart = Admin::Cart.new()
  cart.field_name_combo_test_click
end

When(/^I type in '([^']*)' in the display text on the cart item page/) do |text|
  cart = Admin::Cart.new(:new_item_display_text => text)
  cart.create
end

When(/^I click add on the cart item page/) do
  cart = Admin::Cart.new()
  cart.add_question_click
end

When(/^I click on Edit Cart Preferences on the cart page/) do
  cart = Admin::Cart.new()
  cart.edit_preferences_click
end

When(/^I click next on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_wait_for_load
  cart.edit_cart_next_click
end

When(/^I type in '([^']*)' for Cart Name on the edit cart page/) do |name|
  cart = Admin::Cart.new(:edit_cart_name => name)
  cart.create
end

When(/^I click on the drop down next to Text color in Welcome Message on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_welcome_font_color_click
end

When(/^I choose Black as the Text color in Welcome Message on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_welcome_font_color_black_click
end

When(/^I type in '([^']*)' in Welcome Message on the edit cart page/) do |message|
  cart = Admin::Cart.new()
  cart.edit_cart_set_welcome(message)
end

When(/^I choose B for Bold in the Order Success Message section on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_order_success_bold_click
end

When(/^I type in '([^']*)' in the Order Success Message on the edit cart page/) do |message|
  cart = Admin::Cart.new()
  cart.edit_cart_set_order_success(message)
end

When(/^I delete any existing checkout questions to prevent automation errors/) do
  cart = Admin::Cart.new()
  cart.edit_cart_delete_question_click
end

When(/^I choose Base: Tribute Type under Add Question Field Name in Checkout Questions on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_question_field_name_click
  cart.edit_cart_question_account_type_click
end

When(/^I type in '([^']*)' in Display Text under Add Question Field Name in Checkout Questions on the edit cart page/) do |text|
  cart = Admin::Cart.new(:edit_cart_question_display_text => text)
  cart.create
end

When(/^I click on Add under Add Question Field Name in Checkout Questions on the edit cart page/) do
  #This will error if the field is already specified.  Could clear it before re-adding, but we may want to catch this.
  cart = Admin::Cart.new()
  cart.edit_cart_question_add_click
end

When(/^I choose '([^']*)' on the Email Template drop down on the edit cart page/) do |template|
  cart = Admin::Cart.new()
  cart.edit_cart_set_email_template(template)
end

When(/^I type '([^']*)' in Notification Email on the edit cart page/) do |email|
  cart = Admin::Cart.new(:edit_cart_notification_email => email)
  cart.create
end

When(/^I type '([^']*)' in Confirmation Sender on the edit cart page/) do |email|
  cart = Admin::Cart.new(:edit_cart_confirmation_sender => email)
  cart.create
end

When(/^I choose General in Fund under Default Order Item Transaction Attributes on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_default_order_attributes_click
  cart.edit_cart_default_order_attributes_general_click
end

When(/^I choose General in Fund under Shipping Transaction Attributes on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_shipping_attributes_click
  cart.edit_cart_shipping_attributes_general_click
end

When(/^I wait for the page to load on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_wait_for_load
end

When(/^I choose the default Processor on the drop down next to Transaction Processor on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_select_default_processor
end

Then(/^I should see the '([^']*)' listed on the cart page$/) do |name|
  cart = Admin::Cart.new()
  expect(cart.category_exists?(name)).to eq(true)
end

Then(/^I should see '([^']*)' listed as an item under Automation Cat 1/) do |name|
  cart = Admin::Cart.new()
  expect(cart.category_item_exists?(name)).to eq(true)
end

And(/^I click on View Online Cart$/) do
  cart = Admin::Cart.new()
  cart.view_online_cart_click
end

And(/^I search for '([^']*)' on the live cart page$/) do |category|
  cart = Admin::Cart.new(:cart_category_search => category)
  cart.create
  step "I press Enter on the keyboard"
end

And(/^I click View This Category under '([^']*)' on the live cart page$/) do |category|
  cart = Admin::Cart.new()
  cart.view_category_click category
end

And(/^I click on View This Item under '([^']*)' on the live cart page$/) do |item|
  cart = Admin::Cart.new()
  cart.view_item_click item
end

And(/^I click on Add item to Cart on the live cart page$/) do
  cart = Admin::Cart.new()
  cart.add_item_click
end

And(/^I click on Checkout on the live cart page$/) do
  cart = Admin::Cart.new()
  cart.item_checkout_click
end

And(/^I set the First Name field to '([^']*)' on the live cart page$/) do |name|
  cart = Admin::Cart.new(:first_name => name)
  cart.create
end

And(/^I set the Last Name field to '([^']*)' on the live cart page$/) do |name|
  cart = Admin::Cart.new(:last_name => name)
  cart.create
end

And(/^I set the Country to '([^']*)' on the live cart page$/) do |country|
  cart = Admin::Cart.new()
  cart.billing_country_select country
end

And(/^I set the Address to '([^']*)' on the live cart page$/) do |addr|
  cart = Admin::Cart.new(:billing_address => addr)
  cart.create
end

And(/^I set the City to '([^']*)' on the live cart page$/) do |city|
  cart = Admin::Cart.new(:billing_city => city)
  cart.create
end

And(/^I set the State to '([^']*)' on the live cart page$/) do |state|
  cart = Admin::Cart.new()
  cart.billing_state_select state
end

And(/^I set the Postal Code to '([^']*)' on the live cart page$/) do |zip|
  cart = Admin::Cart.new(:billing_zip => zip)
  cart.create
end

And(/^I set the Email field to '([^']*)' on the live cart page$/) do |email|
  cart = Admin::Cart.new(:billing_email => email)
  cart.create
end

And(/^I set the Phone to '([^']*)' on the live cart page$/) do |phone|
  cart = Admin::Cart.new(:billing_phone => phone)
  cart.create
end

And(/^I click Proceed on the live cart page$/) do
  cart = Admin::Cart.new()
  cart.proceed_click
end

And(/^I set the Cardholder Name to '([^']*)' on the live cart page$/) do |name|
  cart = Admin::Cart.new(:cardholder_name => name)
  cart.create
end

And(/^I set the Card type to '([^']*)' on the live cart page$/) do |type|
  cart = Admin::Cart.new()
  cart.card_type_select type
end

And(/^I set the card number to '([^']*)' on the live cart page$/) do |number|
  cart = Admin::Cart.new(:card_number => number)
  cart.create
end

And(/^I set the card security code to '([^']*)' on the live cart page$/) do |code|
  cart = Admin::Cart.new(:card_code => code)
  cart.create
end

And(/^I set the expiration month to '([^']*)' on the live cart page$/) do |exp|
  cart = Admin::Cart.new()
  cart.exp_month_select exp
end

And(/^I set the expiration year to '([^']*)' on the live cart page$/) do |exp|
  cart = Admin::Cart.new()
  cart.exp_year_select exp
end

And(/^I click on Process Order on the live cart page$/) do
  cart = Admin::Cart.new()
  cart.process_order_click
end

And (/^I click on the Purchase listed in the journal/) do
  cart = Admin::Cart.new()
  cart.purchase_entry_click
end

And (/^the Received Amount should be set to '([^']*)' on the Purchase page/) do |value|
  cart = Admin::Cart.new()
  expect(cart.purchase_received_amount).to eq (value)
end

And (/^I click on the Order Information section on the Purchase page/) do
  cart = Admin::Cart.new()
  cart.order_information_click
end

And (/^the Name of the Item should be set to '([^']*)'/) do |value|
  cart = Admin::Cart.new()
  expect(cart.item_information_name(value)).to eq true
end

Then (/^I should not see the Cart alert: '([^']*)'/) do |value|
  cart = Admin::Cart.new()
  expect(cart.initial_cart_alert(value)).to eq false
end

And (/^I should see the Cart alert: '([^']*)'/) do |value|
  cart = Admin::Cart.new()
  expect(cart.initial_cart_alert(value)).to eq true
end

And (/^the iATS processor named '([^']*)' has been added to the database/) do |value|
  cart = Admin::Cart.new(:iats_ref_name => value)
  landing = Admin::Landing.new
  rgs = Giving::GiftPledge.new
  landing.management_dropdown_click
  rgs.my_organization_click
  cart.account_header_link_eCommerce_click
  cart.add_iats_processor(value)
  # cart.create
end