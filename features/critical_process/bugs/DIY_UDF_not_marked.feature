@bugs
Feature: Verifying that adding a UDF to existing DIY page does not prevent previous UDFs from working

  Background:
    Given I login into eTap for bugs

  Scenario: Verifying that existing and newly added UDFs are both getting marked on incoming submissions
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
###   This is currently dependent on there already being a DIY page created   ###
    And I click Create a Page
    And I click Online Giving Page
    And I select the Embeddable template
    And I click Next on the DIY template page
    And I set the Name to 'UDF Test Page' on the DIY settings page
    And I set the Title to 'UDF Test Page' on the DIY settings page
    And I set the URL to 'UDFTestPage' on the DIY settings page
    And I unmark the checkbox next to Send the donor a confirmation email?
    And I unmark the checkbox nex to Send your organization a confirmation email?
    And I set the Fund to 'General' on the DIY settings page
    And I click Submit on the DIY settings page
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Gender' on the DIY editor page
    And I select 'Automation Testing' for the field category on the DIY editor page
    And I click 'Ticket Quantity A' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click on the link for the form titled UDF Test Page
    And I switch to the new tab in my browser
    And I set Gender to 'Male' on the DIY Donation Page
    And I set Ticket Quantity A to '2' on the DIY Donation Page
    And I set the Donation Amount to '10.00' on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Sam' on the DIY Donation Page
    And I set Last Name to 'Sparticus' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '447 Chelse St.' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46225' on the DIY Donation Page
    And I set Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-415-6598' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Sam Sparticus' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '03' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the transaction will process successfully
    And I close the current tab
    And I type 'Sparticus' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Sam Sparticus' on the accounts page
    And I click tab Defined Fields
    And the 'Gender' should be set to 'Male'
    And I click Journal
    And I click on the Gift listed in the journal
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Ticket Quantity A' set to '2' on the payment page
    And I click Delete on the transaction page
    And I click tab Account Settings
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    And I should see the message: '0 accounts found'
    And I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'UDF Test Page'
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Account Type' on the DIY editor page
    And I select 'Automation Testing' for the field category on the DIY editor page
    And I click 'Ticket Quantity B' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled UDF Test Page
    And I switch to the new tab in my browser
    And I set Gender to 'Male' on the DIY Donation Page
    And I set Ticket Quantity A to '3' on the DIY Donation Page
    And I set Account Type to 'Individual' on the DIY Donation Page
    And I set Ticket Quantity B to '4' on the DIY Donation Page
    And I set the Donation Amount to '10.00' on the DIY Donation Page
    And I set the Donation Frequency to 'One Time' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Sam' on the DIY Donation Page
    And I set Last Name to 'Sparticus' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '447 Chelse St.' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46225' on the DIY Donation Page
    And I set Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Confirm Email to 'lance.moore@blackbaud.com' on the DIY Donation Page
    And I set Phone to '317-415-6598' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Sam Sparticus' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '03' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I close the current tab
    And I type 'Sparticus' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Sam Sparticus' on the accounts page
    And I click tab Defined Fields
    And the 'Gender' should be set to 'Male'
    And the 'Account Type' should be set to 'Individual'
    And I click Journal
    And I click on the Gift listed in the journal
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Ticket Quantity A' set to '3' on the payment page
    And I should see 'Ticket Quantity B' set to '4' on the payment page
    And I click Delete on the transaction page
    And I click tab Account Settings
    And I click Delete Role on the Account Settings page
    And I click Yes on the Account Settings page
    And I should see the message: '0 accounts found'
    And I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Disable for the form titled 'UDF Test Page'
    And I click Yes, Disable the Page
    And I click Delete for the form titled 'UDF Test Page'
    And I click Yes, Delete the Page
    Then the UDF Test Page should no longer show
