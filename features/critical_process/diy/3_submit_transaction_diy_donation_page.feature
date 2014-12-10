Feature: Submit a transaction through a diy donation page

  Background:
    Given a DIY form titled Donation Page already exists

  Scenario: submitting a successful credit card transaction
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click on the link for the form titled Donation Page
    And set the Fund to Unrestricted
    And set Gender to Female
    And set the Donation Amount to Other
    And enter 7 as the amount
    And set the Donation Frequency to One Time
    And set the Title to Mrs.
    And set First Name to Sally
    And set Last Name to Jenkins
    And set Country to United States
    And set Address Lines to 123 Main St.
    And set City to Indianapolis
    And set State/Province to Indiana
    And set Postal Code to 46280
    And set Email to qa-1@blackbaud.com
    And set Confirm Email to qa-1@blackbaud.com
    And set Phone to 317-336-3827
    And set the Card Type to MasterCard
    And set Name on Card to Sally Jenkins
    And set Card Number to 4111111111111111
    And set CVV2 to 123
    And set Expiration Month to 02
    And set Expiration Year to 2034
    And enter the reCAPTCHA security code
    And click Submit
    Then the transaction will process successfully
    And the transaction will be added to the database with accurate information

  Scenario: submitting an unsuccessful credit card transaction
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click on the link for the form titled Donation Page
    And set the Fund to General
    And set Gender to Male
    And set the Donation Amount to Other
    And enter 7 as the amount
    And set the Donation Frequency to One Time
    And set the Title to Mr.
    And set First Name to John
    And set Last Name to Hopkins
    And set Country to United States
    And set Address Lines to 345 West Elm Ave.
    And set City to Indianapolis
    And set Postal Code to 46220
    And set Email to qa-1@blackbaud.com
    And set Confirm Email to qa-1@blackbaud.com
    And set Phone to 317-219-7788
    And set the Card Type to MasterCard
    And set Name on Card to John Hopkins
    And set Card Number to 4111111111111111
    And set CVV2 to 123
    And set Expiration Month to 03
    And set Expiration Year to 2034
    And enter the reCAPTCHA security code
    And click Submit
    Then the following message should appear: Please select your state/province.