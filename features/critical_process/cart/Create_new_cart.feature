Feature: Create a new Cart

Background:
Given I am logged into eTap
And I have a Cart page listed under eStore (Cart)

Scenario: Create New Category
  Given I am logged into eTap
  And I click on the drop down arrow next to management
  And under Online Presence I click on eStore (Cart)
  And I click on Cart
  And I click on new Category
  And I name it Category 1
  And I put in a description called Description
  And I click on Align Center
  And I click on start date of today
  And I click on choose file under Category Image
  And I choose cartimage.jpg
  And I click on open
  When I click on Save Category
  Then I should see the Category 1 listed

Scenario: Create new Item
  Given I am logged into eTap
  Given I am in Cart
  Given I am in Category 1
  And I click on new item under Tasks
  And in the name field I type in Item 1
  And in the Short Description field I type in Short description
  And I highlight Short Description
  And I click on increase indent
  And in the Long Description box I click on Font Family
  And I choose Ariel Black
  And I type in the words Long Description
  And I choose from Financial Information, Item Deductibility, Fully Non-Deductible
  And I type in regular price of $1.00
  And I click on Start date of today under Publish Information
  And I click on Next to Step 2
  And On Thumb I click on Choose File
  And I click on itemimage1.jpg
  And I click on open
  And On Regular I click on Choose File
  And I click on itemimage2.jpg
  And I click on open
  And I click on next to Step 3
  And I click on the Vendor field under Internal information
  And I type in Vendor
  And I type in Vendor price of $1.00
  And I type in stock number 1
  And I type in Unit 1
  And I type in ID 1
  And I chose Fund General under Transaction Attributes
  Amd I click next to Step 4
  And I click on the drop down box next to field name
  And I choose Test
  And I type in test in the display text
  And I click add
  When I click next to Step 5
  Then I should see Test listed as an item under Category 1

 Scenario: Edit Cart Preferences
   Given I am logged into eTap
   Given I am in Cart
   Given I am Category 1
   And I click on Edit Cart Preferences
   And I click next past step 1
   And I am on step 2 Online Options
   And I type in Cart Name Name
   And I accept the default Category Header
   And I accept the default No Quantity Label
   And in the Welcome Message Tile I click on the drop down next to Text color
   And I choose Black
   And I type in Welcome
   And I am in the Order Success Message section I choose B for Bold
   And I am in the Order Success Message and I type in Success
   And I am in the Checkout Questions I choose under Add Question Field Name Base:Account Type
   And I type in Display Text Text
   And I accept the default Apply To: Constituents
   And I click on Add
   And I click Next to Step 3
   And I accept the default Chisel Cart Template
   And I click next to Step 4
   And I click on the drop down next to Email Template
   And I choose Cart Templates-Order Details
   And I type in Notification eMail test@any.com
   And I type in Confirmation Sender test1@any.com
   And I click Next to Step 5
   And in Default Order Item Transaction Attributes I choose Fund General
   And in Shipping Transaction Attributes I click on the drop down next to Fund
   And I choose General
   And I leave Transaction Attributes blank
   And I click next to Step 6
   And I accept the defaults
   And I click next to Step 7
   And I keep shipping fees set to blank
   And I click next to Step 8
   And I accept the default time zone
   And I click on the drop down next to Transaction Processor
   And I choose the default Processor
   And I click next to finish





























