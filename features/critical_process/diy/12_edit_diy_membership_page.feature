@crit_proc7
Feature: Edit a diy membership page

  Background:
    Given I login into eTap for CP7

  Scenario: editing a diy membership page
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Membership Page'
    And I click Edit Style on the DIY editor page
    And I click Swap Template on the DIY editor page
    And I select the Float template on the DIY editor page
    And I click Swap To This Template on the DIY editor page
    And I click Edit Style on the DIY editor page
    And I change the Title font to Comic Sans 20pt on the DIY editor page
    And I change the Main Background to #EEEEEE on the DIY editor page
    And I click Update on the DIY editor page
    And I click Settings on the DIY editor page
    And I unmark the checkbox next to Include comments box
    And I click Update on the DIY settings page
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Date of Birth' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Add Item on the DIY editor page
    And I select Add Text on the DIY editor page
    And I change the default text on the DIY editor page
    And I click Update on the Add Text page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Membership Page
    And I switch to the new tab in my browser
    And I set Date of Birth to '02/15/1985' on the DIY Page
    And I set the Membership Type to 'New' on the DIY Membership page
    And I set the Membership Level to 'Platinum' on the DIY Membership page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Jonathan' on the DIY Donation Page
    And I set Last Name to 'Jensen' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '8774 Edgewood Ave' on the DIY Donation Page
    And I set City to 'New York' on the DIY Donation Page
    And I set State to 'New York' on the DIY Donation Page
    And I set Postal Code to '10020' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '548-999-8759' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Jonathan Jensen' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2033' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I click Submit on the DIY Donation Page
    And the submission will go through successfully
    And I close the current tab
    And I type 'Jonathan Jensen' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jonathan Jensen' in the search results
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And the date field on the transaction screen should be populated with Today
    And the Received Amount should be set to '$125.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Annual'
    And I click Gift Types
    And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
    And I should see the message 'eCommerce Page' on the recurring gift screen
    And I click on the User Defined Fields section on the new payment page
    And I should see 'DIY Test Page' set to 'Existing Membership Page' on the payment page
    And I should see 'Membership Type' set to 'New' on the payment page
    And I should see 'Membership Level' set to 'Platinum' on the payment page
    And I click on 'Defined Fields' in the account header
    And the 'Date of Birth' should be set to '2/15/1985'
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Membership Page'
    And I hover over 'Date of Birth' field on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I set the Label field to 'Birthdate' on the DIY editor page
    And I click Update on the DIY Edit Field modal
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Membership Page
    And I switch to the new tab in my browser
    And I set Birthdate to '04/05/1981' on the DIY Page
    And I set the Membership Type to 'New' on the DIY Membership page
    And I set the Membership Level to 'Gold' on the DIY Membership page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'David' on the DIY Donation Page
    And I set Last Name to 'Harper' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '763 Southport Road' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '46259' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '317-988-9765' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'David Harper' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2032' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the submission will go through successfully
    And I close the current tab
    And I type 'David Harper' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'David Harper' in the search results
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And the date field on the transaction screen should be populated with Today
    And the Received Amount should be set to '$90.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Annual'
    And I click Gift Types
    And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
    And I should see the message 'eCommerce Page' on the recurring gift screen
    And I click on the User Defined Fields section on the new payment page
    And I should see 'DIY Test Page' set to 'Existing Membership Page' on the payment page
    And I should see 'Membership Type' set to 'New' on the payment page
    And I should see 'Membership Level' set to 'Gold' on the payment page
    And I click on 'Defined Fields' in the account header
    And the 'Date of Birth' should be set to '4/5/1981'