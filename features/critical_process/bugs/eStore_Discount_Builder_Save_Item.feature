 Feature: Discount Builder Save Item In eStore

    Background:
      Given I login into eTap for bugs

    Scenario: Discount Builder Save Item In eStore
      When I click Management on the main menu
      And I click on eStore \Cart\ on the management menu
      And I click on Manage Cart Discounts
      And I click on 'Designer Guest VIP Ticket Discount'
      And I click on 'Add/Remove Items'
      And I check the Items
      And click Ok
      And I enter 1.00 in the textbox beside Update All
      And I click on Update All
      And click Save
      And I click on 'Designer Guest VIP Ticket Discount'
      Then I should see Items in the Applicable Items








