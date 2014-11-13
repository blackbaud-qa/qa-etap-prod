Feature: Create a new Cart

  Background:
    Given I am logged into eTap
    And I have a Cart page listed under eStore (Cart)

 Scenario: View online Cart
  Given I am logged into eTap
  Given I am in Cart
  And I click on View Online Cart
  And Iam on the live Cart URL
  And I click on View This Category under Category 1
  And I click on View This Item under Item 1
  And I click on Add item to Cart
  And I click on Checkout
  And I Fill out the Contact information
  And I Click Proceed
  And I Click on Credit Card in Payment Information Method
  And I Click on the drop down next to Card Type
  And I choose Visa
  And I type in Card Number 4111111111111111
  And I type in Card Security Code 123
  And I choose X expiration Month
  And I choose X Expiration Year
  And I click on Proceed
  And I click on Process Order
  When I receive a confirmation email
  Then I should see the transaction in eTapestry


|Contact Information|Text         |
|First Name         |First        |
|Last Name          |Last         |
|Country            |United States|
|Street Address     |123          |
|City               |Any          |
|State/Province     |SC           |
|Postal Code        |12345        |
|Email              |any@any.com  |
|Phone              |333-333-3333 |
