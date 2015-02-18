@ready
Feature: Create a new Cart

#Background:
#Given I am logged into eTap
#And I have a Cart page listed under eStore (Cart)

#Note: File paths for images look for the 'image_path' setting in config.yml

Scenario: Create New Category
  Given I click on the Management drop down
  And I click on eStore (Cart) on the management menu
  And I rename the existing category to prevent automation errors
  And I click on new Category on the cart page
  And I name it 'Category 1' on create cart category
  And I put in a description called 'Description' on create cart category
  And I click on Align Center on create cart category
  And I click on start date of today on create cart category
  And I select a file under Category Image on create cart category
  When I click on Save Category on create cart category
  Then I should see the 'Category 1' listed on the cart page

#Scenario: Create new Item
#  Given I click on the Management drop down
#  And I click on eStore (Cart) on the management menu
#  And I click on 'Category 1' on the cart page
#  And I click on new item under Tasks on the cart page
#  And  I type 'Item 1' in the name field on the cart item page
#  And I type 'Short description' in the short description field on the cart item page
#  And I highlight the text in the short description field on the cart item page
#  And I click on increase indent in the short description field on the cart item page
#  And I click Font Family in the long description field on the cart item page
#  And I click on Ariel Black under Font Family in the long description field on the cart item page
#  And I type 'Long Description' in the Long Description box on the cart item page
#  And I choose from Financial Information, Item-Deductibility, Fully Non-Deductible on the cart item page
#  And I type in regular price of '$1.00' on the cart item page
#  And I click on Start date of today under Publish Information on the cart item page
#  And I click on Next on the cart item page
#  And I select a file under Thumb on the cart item page
#  And I select a file under Regular on the cart item page
#  And I click on Next on the cart item page
#  And I type in 'Vendor' in the Vendor field on the cart item page
#  And I type in Vendor price of '$1.00' on the cart item page
#  And I type in stock number '1' on the cart item page
#  And I type in Unit '1' on the cart item page
#  And I type in ID '1' on the cart item page
#  And I chose Fund General under Transaction Attributes
#  And I click on Next on the cart item page
#  And I click on the drop down box next to field name on the cart item page
#  And I choose Test on the field combo box on the cart item page
#  And I type in 'test' in the display text on the cart item page
#  And I click add on the cart item page
#  And I click on Next on the cart item page
#  Then I should see 'Item 1' listed as an item under Category 1

Scenario: Edit Cart Preferences
  Given I click on the Management drop down
  And I click on eStore (Cart) on the management menu
#  And I click on 'Category 1' on the cart page
   And I click on Edit Cart Preferences on the cart page
   And I click next on the edit cart page
   And I type in 'Name' for Cart Name on the edit cart page
#   And I accept the default Category Header
#   And I accept the default No Quantity Label
   And I click on the drop down next to Text color in Welcome Message on the edit cart page
   And I choose Black as the Text color in Welcome Message on the edit cart page
   And I type in 'Welcome' in Welcome Message on the edit cart page
   And I choose B for Bold in the Order Success Message section on the edit cart page
   And I type in 'Success' in the Order Success Message on the edit cart page
   And I delete any existing checkout questions to prevent automation errors
   And I choose Base:Account Type under Add Question Field Name in Checkout Questions on the edit cart page
   And I type in 'Text' in Display Text under Add Question Field Name in Checkout Questions on the edit cart page
#   And I accept the default Apply To: Constituents
   And I click on Add under Add Question Field Name in Checkout Questions on the edit cart page
   And I click next on the edit cart page
#   And I accept the default Chisel Cart Template
   And I click next on the edit cart page
   And I choose 'Cart Templates - Order Details' on the Email Template drop down on the edit cart page
   And I type 'test@any.com' in Notification Email on the edit cart page
   And I type 'test1@any.com' in Confirmation Sender on the edit cart page
   And I click next on the edit cart page
   And I choose General in Fund under Default Order Item Transaction Attributes on the edit cart page
   And I choose General in Fund under Shipping Transaction Attributes on the edit cart page
   And I click next on the edit cart page
   And I wait for the page to load on the edit cart page
#   And I accept the defaults for page 6
   And I wait for the page to load on the edit cart page
   And I click next on the edit cart page
   And I wait for the page to load on the edit cart page
#   And I keep shipping fees set to blank on page 7
   And I click next on the edit cart page
   And I choose the default Processor on the drop down next to Transaction Processor on the edit cart page
#   And I click next to finish
  And I click next on the edit cart page
#What are we testing for??




























