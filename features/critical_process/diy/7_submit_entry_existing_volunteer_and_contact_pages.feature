@crit_proc8
Feature: Submit an entry through existing non-transaction based diy pages

  Background:
  Given I login into eTap for CP8

  Scenario: Submit a contact through Existing Volunteer Page
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
#    And I click Edit for the form titled 'Existing Volunteer Page'
#    And I click Add Item on the DIY editor page
#    And I select Add Fields on the DIY editor page
#    And I select 'Base' for the field category on the DIY editor page
#    And I click 'Gender' on the DIY editor page
#    And I click Update on the Add Fields page
#    And I click Save on the DIY editor page
#    And I confirm saving my changes
#    And I click Go Live on the DIY editor page
#    And I click Yes, Go Live! on the DIY editor page
#    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Volunteer Page
    And I switch to the new tab in my browser
    And I set Gender to 'Male' on the DIY Donation Page
    And I set the Volunteer Availability to 'As Needed' on the DIY Volunteer page
    And I set the Volunteer Skill Set to 'Accounting' on the DIY Volunteer page
    And I set the Volunteer Interest Area to 'Mentoring' on the DIY Volunteer page
    And I set the Title to 'Mr.' on the DIY Donation Page
    And I set First Name to 'Cameron' on the DIY Donation Page
    And I set Last Name to 'Zavala' on the DIY Donation Page
    And I set Country to 'United States' on the DIY Donation Page
    And I set Address Lines to '827 Browning Lane' on the DIY Donation Page
    And I set City to 'Endicott' on the DIY Donation Page
    And I set State to 'New York' on the DIY Donation Page
    And I set Postal Code to '13760' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '607-786-2950' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the registration will go through successfully
    And I close the current tab
    And I type 'Cameron Zavala' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Cameron Zavala' in the search results
    And I click on 'Journal' in the account header
    And I click on the Contact listed in the journal
    And the date field on the transaction screen should be populated with Today
    And I should see the Subject set to 'Existing Volunteer Page' on the contact page
    And I should see the Method set to 'DIY Form-Volunteer' on the contact page
    And I should see 'DIY Test Page' set to 'Existing Volunteer Page' on the payment page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Gender' set to 'Male' on the payment page
    And I should see 'Volunteer Availability' set to 'As Needed' on the payment page
    And I should see 'Volunteer Skill Set' set to 'Accounting' on the payment page
    And I should see 'Volunteer Interest Areas' set to 'Mentoring' on the payment page


  Scenario: Submit a contact through Existing Contact Page WITH Address Fields
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
#    And I click Edit for the form titled 'Existing Contact Page WITH Address Fields'
#    And I click Add Item on the DIY editor page
#    And I select Add Fields on the DIY editor page
#    And I select 'Base' for the field category on the DIY editor page
#    And I click 'Maiden Name' on the DIY editor page
#    And I click Update on the Add Fields page
#    And I click Save on the DIY editor page
#    And I confirm saving my changes
#    And I click Go Live on the DIY editor page
#    And I click Yes, Go Live! on the DIY editor page
#    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Contact Page WITH Address Fields
    And I switch to the new tab in my browser
    And I set Account Type to 'Individual' on the DIY Donation Page
    And I set Company to 'Blackbaud' on the DIY Page
    And I set Date of Birth to '12/3/1981' on the DIY Page
    And I set Gender to 'Female' on the DIY Donation Page
    And I set Job Title to 'SQA II - eTapestry' on the DIY Page
    And I set Marital Status to 'Single' on the DIY Page
    And I set Maiden Name to 'Martin' on the DIY Donation Page
    And I set the Title to 'Miss' on the DIY Donation Page
    And I set First Name to 'Haley' on the DIY Donation Page
    And I set Middle Name to 'Faye' on the DIY Donation Page
    And I set Last Name to 'Crane' on the DIY Donation Page
    And I set Suffix to 'MD' on the DIY Donation Page
    And I set Country to 'Canada' on the DIY Donation Page
    And I set Address Lines to '1722 Rue De La Gare' on the DIY Donation Page
    And I set City to 'Alma' on the DIY Donation Page
    And I set State to 'Quebec' on the DIY Donation Page
    And I set Postal Code to 'G8B 3N8' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I set Phone to '418-482-9773' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the registration will go through successfully
    And I close the current tab
    And I type 'Haley Crane' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Haley Faye Crane, MD' in the search results
    And I click on 'Personas' in the account header
    And the Address Lines should be set to '1722 Rue De La Gare'
    And the City should be set to 'Alma'
    And the State should be set to 'QC'
    And the Postal Code should be set to 'G8B 3N8'
    And the Voice should be set to '418-482-9773'
    And the Email should be set to 'test@test.com'
    And the Short Salutation should be set to 'Haley'
    And the Long Salutation should be set to 'Miss Crane'
    And the Envelope Salutation should be set to 'Miss Haley Faye Crane, MD'
    And the 'Company' should be set to 'Blackbaud'
    And the 'Job Title' should be set to 'SQA II - eTapestry'
    And I click on 'Journal' in the account header
    And I click on the Contact listed in the journal
    And the date field on the transaction screen should be populated with Today
    And I should see the Subject set to 'Existing Contact Page WITH Address Fields' on the contact page
    And I should see the Method set to 'DIY Form-Contact' on the contact page
    And I should see 'DIY Test Page' set to 'Existing Contact Page WITH Address Fields' on the payment page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Gender' set to 'Female' on the payment page
    And I should see 'Account Type' set to 'Individual' on the payment page
    And I should see 'Date of Birth' set to '12/3/1981' on the payment page
    And I should see 'Marital Status' set to 'Single' on the payment page
    And I should see 'Maiden Name' set to 'Martin' on the payment page

  Scenario: Submit a contact through Existing Contact Page WITHOUT Address Fields
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
#    And I click Edit for the form titled 'Existing Contact Page WITHOUT Address Fields'
#    And I click Add Item on the DIY editor page
#    And I select Add Fields on the DIY editor page
#    And I select 'Base' for the field category on the DIY editor page
#    And I click 'Maiden Name' on the DIY editor page
#    And I click Update on the Add Fields page
#    And I click Save on the DIY editor page
#    And I confirm saving my changes
#    And I click Go Live on the DIY editor page
#    And I click Yes, Go Live! on the DIY editor page
#    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Contact Page WITHOUT Address Fields
    And I switch to the new tab in my browser
    And I set Account Type to 'Individual' on the DIY Donation Page
    And I set Company to 'ABC Markets' on the DIY Page
    And I set Date of Birth to '10/5/1965' on the DIY Page
    And I set Gender to 'Female' on the DIY Donation Page
    And I set Job Title to 'Office Manager' on the DIY Page
    And I set Marital Status to 'Married' on the DIY Page
    And I set Maiden Name to 'Combs' on the DIY Donation Page
    And I set the Title to 'Mrs.' on the DIY Donation Page
    And I set First Name to 'Shirley' on the DIY Donation Page
    And I set Middle Name to 'L.' on the DIY Donation Page
    And I set Last Name to 'Lizotte' on the DIY Donation Page
    And I set Email to 'test@test.com' on the DIY Donation Page
    And I set Confirm Email to 'test@test.com' on the DIY Donation Page
    And I click Submit on the DIY Donation Page
    And the registration will go through successfully
    And I close the current tab
    And I type 'Shirley' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Shirley L. Lizotte' in the search results
    And I click on 'Personas' in the account header
    And the Email should be set to 'test@test.com'
    And the Short Salutation should be set to 'Shirley'
    And the Long Salutation should be set to 'Mrs. Lizotte'
    And the Envelope Salutation should be set to 'Mrs. Shirley L. Lizotte'
    And the 'Company' should be set to 'ABC Markets'
    And the 'Job Title' should be set to 'Office Manager'
    And I click on 'Journal' in the account header
    And I click on the Contact listed in the journal
    And the date field on the transaction screen should be populated with Today
    And I should see the Subject set to 'Existing Contact Page WITHOUT Address Fields' on the contact page
    And I should see the Method set to 'DIY Form-Contact' on the contact page
    And I should see 'DIY Test Page' set to 'Existing Contact Page WITHOUT Address Fields' on the payment page
    And I click on 'Defined Fields' in the account header
    Then I should see 'Gender' set to 'Female' on the payment page
    And I should see 'Account Type' set to 'Individual' on the payment page
    And I should see 'Date of Birth' set to '10/5/1965' on the payment page
    And I should see 'Marital Status' set to 'Married' on the payment page
    And I should see 'Maiden Name' set to 'Combs' on the payment page