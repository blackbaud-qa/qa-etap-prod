@crit_proc
Feature: Submit an entry through other existing diy pages

  Scenario: Submit a donation through Existing Event Page
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Event Page'
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Gender' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Event Page
    And I switch to the new tab in my browser
    And I set Gender to 'Male' on the DIY Donation Page
    And I set the Ticket Quantity to '2' on the DIY Event Page
    And I set Account Type to 'Individual' on the DIY Donation Page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Kevin' on the DIY Donation Page
    And I set Last Name to 'Aguirre' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '4106 Hog Camp Road' on the DIY Donation Page
    And I set City to 'Cicero' on the DIY Donation Page
    And I set State to 'Illinois' on the DIY Donation Page
    And I set Postal Code to '60650' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '708-447-7296' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Kevin Aguirre' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I close the current tab
    And I type 'Kevin Aguirre' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Kevin Aguirre' in the search results
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And the date field on the transaction screen should be populated with Today
    And the Received Amount should be set to '$50.00'
    And the Non-Deductible Amount should be set to the '$20.00'
    And the Fund should be set to 'General'
    And the Campaign should be set to 'Annual'
    And the Approach should be set to 'Unsolicited'
    And I click Gift Types
    And I should see the message 'Credit/Debit Card has been processed via' on the recurring gift screen
    And I should see the message 'eCommerce Page' on the recurring gift screen
    And I click on the User Defined Fields section on the new payment page
    And I should see 'DIY Test Page' set to 'Existing Event Page' on the payment page
    And I should see 'Ticket Quantity' set to '2' on the payment page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Gender' set to 'Male' on the payment page
    And I should see 'Account Type' set to 'Individual' on the payment page


  Scenario: Submit a donation through Existing Membership Page
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Membership Page'
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Gender' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Membership Page
    And I switch to the new tab in my browser
    And I set Gender to 'Female' on the DIY Donation Page
    And I set the Membership Type to 'New' on the DIY Membership page
    And I set the Membership Level to 'Gold' on the DIY Membership page
    And I set the Title to 'Mrs.' on the DIY Donation Page
    And I set First Name to 'Kendra' on the DIY Donation Page
    And I set Last Name to 'Bates' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '871 Triangle Trail' on the DIY Donation Page
    And I set City to 'Cicero' on the DIY Donation Page
    And I set State to 'Indiana' on the DIY Donation Page
    And I set Postal Code to '47502' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '765-124-4564' on the DIY Donation Page
    And I set the Card Type to 'MasterCard' on the DIY Donation Page
    And I set Name on Card to 'Kendra Bates' on the DIY Donation Page
    And I set Card Number to '4111111111111111' on the DIY Donation Page
    And I set CVV2 to '123' on the DIY Donation Page
    And I set Expiration Month to '02' on the DIY Donation Page
    And I set Expiration Year to '2034' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    Then the transaction will process successfully
    And I close the current tab
    And I type 'Kendra Bates' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Kendra Bates' in the search results
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
    Then I should see 'Gender' set to 'Female' on the payment page
    And I should see 'Membership Type' set to 'New' on the payment page
    And I should see 'Membership Level' set to 'Gold' on the payment page
