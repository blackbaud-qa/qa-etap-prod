@crit_proc
Feature: Submit a transaction through a diy donation page

#  Background:
#    Given a DIY form titled Donation Page already exists

  Scenario: submitting a successful credit card transaction
    Given I am logged into eTap
    When I click Management on the main menu
    When I click on DIY Forms on the management page
    And I click on the link for the form titled Donation Page
    And I switch to the new tab in my browser
    And I set the Fund to 'Unrestricted' on the DIY Donation Page
    And I set Gender to 'Female' on the DIY Donation Page
    And I set the Donation Amount to Other on the DIY Donation Page
    And I enter '7' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mrs.' on the DIY Donation Page
    And I set First Name to 'Sally' on the DIY Donation Page
    And I set Last Name to 'Jenkins' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '123 Main St.' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46280' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-336-3827' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Sally Jenkins' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
#    And enter the reCAPTCHA security code
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I close the current tab
#    And the transaction will be added to the database with accurate information


  Scenario: Submitting an unsuccessful credit card transaction
    Given I am logged into eTap
    When I click Management on the main menu
    When I click on DIY Forms on the management page
    And I click on the link for the form titled Donation Page
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
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-219-7788' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'John Hopkins' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '03' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'Please select your state/province.' error
    And I should close the javascript popup
    And I close the current tab
