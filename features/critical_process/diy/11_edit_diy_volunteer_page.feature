#@crit_proc7
Feature: Edit a diy volunteer page

  Background:
    Given I login into eTap for CP7

  Scenario: editing a diy volunteer page
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Volunteer Page'
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
    And I click on the link for the form titled Existing Volunteer Page
    And I switch to the new tab in my browser
    Then I should see the edited DIY page
    And I set Date of Birth to '01/05/1975' on the DIY Page
    And I set the Volunteer Availability to 'As Needed' on the DIY Volunteer page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'George' on the DIY Donation Page
    And I set Last Name to 'Grant' on the DIY Donation Page
    And I set Country to 'Canada' on the DIY Donation Page
    And I set Address Lines to '9827 Fifth Street' on the DIY Donation Page
    And I set City to 'Peace River' on the DIY Donation Page
    And I set State to 'Alberta' on the DIY Donation Page
    And I set Postal Code to '1234 AA' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '123-123-1234' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the submission will go through successfully
    And I close the current tab
    And I type 'George Grant' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'George Grant' in the search results
    And I click on 'Journal' in the account header
    And I click on the Contact listed in the journal
    And the date field on the transaction screen should be populated with Today
    And I should see the Subject set to 'Existing Volunteer Page' on the contact page
    And I should see the Method set to 'DIY Form-Volunteer' on the contact page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Volunteer Availability' set to 'As Needed' on the payment page
    And the 'Date of Birth' should be set to '1/5/1975'
    And I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Volunteer Page'
    And I hover over the Date of Birth field on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I set the Label field to 'Birthdate' on the DIY editor page
    And I click Update on the DIY Edit Field modal
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Volunteer Page
    And I switch to the new tab in my browser
    Then I should see the edited DIY page
    And I set Birthdate to '02/08/1975' on the DIY Page
    And I set the Volunteer Availability to 'As Needed' on the DIY Volunteer page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Steven' on the DIY Donation Page
    And I set Last Name to 'Davis' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '458 Franklin Road' on the DIY Donation Page
    And I set City to 'Indianapolis' on the DIY Donation Page
    And I set State to 'IN' on the DIY Donation Page
    And I set Postal Code to '11254' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '317-987-9965' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the submission will go through successfully
    And I close the current tab
    And I type 'Steven Davis' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Steven Davis' in the search results
    And I click on 'Journal' in the account header
    And I click on the Contact listed in the journal
    And the date field on the transaction screen should be populated with Today
    And I should see the Subject set to 'Existing Volunteer Page' on the contact page
    And I should see the Method set to 'DIY Form-Volunteer' on the contact page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Volunteer Availability' set to 'As Needed' on the payment page
    And the 'Date of Birth' should be set to '2/8/1984'

