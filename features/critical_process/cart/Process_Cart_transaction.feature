@crit_proc
Feature: Create a new Cart

#  Background:
#    Given I am logged into eTap
#    And I have a Cart page listed under eStore (Cart)

 Scenario: View online Cart
  Given I am logged into eTap
  And I click on the Management drop down
  And I click on eStore (Cart) on the management menu
  And I click on View Online Cart
  And I switch to the new tab in my browser
  And I search for 'Category 1' on the live cart page
  And I click View This Category under 'Category 1' on the live cart page
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

#  When I receive a confirmation email
#  Then I should see the transaction in eTapestry
