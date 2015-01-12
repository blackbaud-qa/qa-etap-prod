When(/^I click on new Category on the cart page$/) do
  cart = Admin::Cart.new
  cart.new_category_click
  #pending
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

When(/^I choose from Financial Information, Item Deductibility, Fully Non-Deductible on the cart item page/) do
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

When(/^I choose Base:Account Type under Add Question Field Name in Checkout Questions on the edit cart page/) do
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

When(/^I choose the default Processor on the drop down next to Transaction Processor on the edit cart page/) do
  cart = Admin::Cart.new()
  cart.edit_cart_select_default_processor
end

Then(/^I should see the '([^']*)' listed on the cart page$/) do |name|
  cart = Admin::Cart.new()
  expect(cart.category_exists?(name)).to eq(true)
end

Then(/^I should see '([^']*)' listed as an item under Category 1/) do |name|
  cart = Admin::Cart.new()
  expect(cart.category_item_exists?(name)).to eq(true)
end