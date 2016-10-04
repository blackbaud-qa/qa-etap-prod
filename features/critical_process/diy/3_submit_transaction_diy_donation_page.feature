@crit_proc7
Feature: Submit a transaction through a diy donation page

#  Background:
#    Given a DIY form titled Existing Donation Page already exists
  Background:
  Given I login into eTap for CP7


  Scenario: submitting a successful credit card transaction
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Existing Donation Page
    And I switch to the new tab in my browser
    And I set the Fund to 'General' on the DIY Donation Page
    And I set Gender to 'Male' on the DIY Donation Page
    And I set the Donation Amount to Other on the DIY Donation Page
    And I enter '7' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Jon' on the DIY Donation Page
    And I set Last Name to 'Snow' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to 'asdf' on the DIY Donation Page
    And I set City to 'asdf' on the DIY Donation Page
    And I set State to 'South Carolina' on the DIY Donation Page
    And I set Postal Code to '12345' on the DIY Donation Page
    And I set Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Phone to '123-123-1234' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Jon Snow' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
#    And enter the reCAPTCHA security code
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I close the current tab
    And the transaction will be added to the database with accurate information


  Scenario: Submitting an unsuccessful credit card transaction
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Existing Donation Page
    And I switch to the new tab in my browser
    And I set the Fund to 'General' on the DIY Donation Page
    And I set Gender to 'Male' on the DIY Donation Page
    And I set the Donation Amount to Other on the DIY Donation Page
    And I enter '7' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'John' on the DIY Donation Page
    And I set Last Name to 'Hopkins' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '345 West Elm Ave.' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set Postal Code to '46280' on the DIY Donation Page
    And I set Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-219-7788' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'John Hopkins' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '03' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    # TODO: Decide which error handling to use, based on outcome of TFS 680390
    #Then I should see the 'Please select your state/province.' error
    Then I should see the "The constituent's state was not supplied." DIY error
    And I should close the javascript popup
    And I close the current tab
