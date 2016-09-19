@crit_proc8
Feature: Verify that validation is working properly on DIY pages

# TODO: Update Knightrider, Fullhouse and Production Groundzero Databases

  Background:
#    Given I login into eTap for CP8
    Given I login into eTap a second time with values 'groundzero.us', 'spicypancakes1'

  Scenario: verify mm/dd/yyyy fields are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I set the 'DIY Validate MMDDYYYY Date Field' UDF to 'crap' on the DIY page
    And I set the 'DIY Validate Required Field*' UDF to 'crap' on the DIY page
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab

  Scenario: verify mm/dd fields are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I set the 'DIY Validate MMDD Date Field' UDF to 'crap' on the DIY page
    And I set the 'DIY Validate Required Field*' UDF to 'crap' on the DIY page
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab

  Scenario: verify numbers are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I set the 'DIY Validate Number Field' UDF to 'crap' on the DIY page
    And I set the 'DIY Validate Required Field*' UDF to 'crap' on the DIY page
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab

  Scenario: verify integers are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I set the 'DIY Validate Number Field' UDF to '11.22.03' on the DIY page
    And I set the 'DIY Validate Required Field*' UDF to 'crap' on the DIY page
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab

  Scenario: verify currencies are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I set the 'DIY Validate Currency Field' UDF to 'crap' on the DIY page
    And I set the 'DIY Validate Required Field*' UDF to 'crap' on the DIY page
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab

  Scenario: verify required fields are being validated properly
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click on the link for the form titled Verifying Validation
    And I switch to the new tab in my browser
    And I enter '15' as the amount on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Devin' on the DIY Donation Page
    And I set Last Name to 'French' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '863 Marana Dr' on the DIY Donation Page
    And I set City to 'Carmel' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46032' on the DIY Donation Page
    And I set Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'qa-1@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-479-5823' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Devin French' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '04' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then I should see the 'XXX' error
    And I should close the javascript popup
    And I close the current tab