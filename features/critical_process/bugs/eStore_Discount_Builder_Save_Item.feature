 Feature: Discount Builder Save Item In eStore

    Background:
      Given I login into eTap for bugs

    Scenario: Discount Builder Save Item In eStore
      When I click Management on the main menu
      And I click on eStore on the management menu
      And I click on Manage Cart Discounts on cart page
      And I click on New Discount on the Manage Cart Discounts page
      And I name it 'New Discount 1' on create discount page
      And I put in a description called 'Description' on create discount page
      And I click on Add/Remove Items on create discount page
      And I click on Discounted Item
      And click Ok
      And I enter 1.00 in the textbox beside Update All
      And I click on Update All
      And click Save
      And I click on 'Designer Guest VIP Ticket Discount'
      Then I should see Items in the Applicable Items







