@crit_proc
Feature: Process Cart transaction

 Scenario: View online Cart
  Given I am logged into eTap
  And I click on the Management drop down
  And I click on eStore (Cart) on the management menu
  And I click on View Online Cart
  And I switch to the new tab in my browser
  And I search for 'Automation Cat 1' on the live cart page
  And I click View This Category under 'Automation Cat 1' on the live cart page
  And I click on View This Item under 'Item 1' on the live cart page
  And I click on Add item to Cart on the live cart page
  And I click on Checkout on the live cart page
  And I set the First Name field to 'First' on the live cart page
  And I set the Last Name field to 'Last' on the live cart page
  And I set the Country to 'United States' on the live cart page
  And I set the Address to '123 Some Rd.' on the live cart page
  And I set the City to 'Any' on the live cart page
  And I set the State to 'South Carolina' on the live cart page
  And I set the Postal Code to '12345' on the live cart page
  And I set the Email field to 'any@any.com' on the live cart page
  And I set the Phone to '333-333-3333' on the live cart page
  And I click Proceed on the live cart page
  And I set the Cardholder Name to 'First Last' on the live cart page
  And I set the Card type to 'Visa' on the live cart page
  And I set the card number to '4111111111111111' on the live cart page
  And I set the card security code to '123' on the live cart page
  And I set the expiration month to '04' on the live cart page
  And I set the expiration year to '2020' on the live cart page
  And I click Proceed on the live cart page
  And I click on Process Order on the live cart page
  And I close the current tab
  And I type 'First Last' into the dynamic search field
  And I press Enter on the keyboard
  And I click on 'First Last' in the search results
  And I click on 'Journal' in the account header
  And I click on the Purchase listed in the journal
  And the date field on the transaction screen should be populated with Today
  And the Received Amount should be set to '$1.00' on the Purchase page
  And the Fund should be set to 'General'
  And I click Gift Types
  And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
  And I should see the message 'Online Cart' on the recurring gift screen
  And I click on the Order Information section on the Purchase page
  And the Name of the Item should be set to 'Item 1'
  And I click Delete on the transaction page
  Then I should be taken to 'First Last' Journal page

