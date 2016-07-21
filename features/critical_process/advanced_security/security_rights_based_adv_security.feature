@crit_proc4
Feature: Verify security rights based advanced security is working

  Background:
    ### If you change the CP number then you have to make the user login numbers match in the steps below ###
    ### Also, this feature file should not be tested in the same database as query_based_adv_security ###
    Given I login into eTap for CP4

  Scenario: Add security rights values, create security group, log in and verify results
    When I click Management on the main menu
    And I click System Defined Fields on the management menu
    And I click Security Rights on the System Defined Fields page
    And I enter 'Code A' as a value on the Security Rights page
    And I click Add Value
    And I enter 'Code B' as a value on the Security Rights page
    And I click Add Value
    And I click Save and Finish on the UDF page
    And I type 'American' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'American Express' in the search results
    And I click on 'Defined Fields' in the account header
    And I click on the Show All Fields link on the Defined Fields page
    And I set the 'Account Type' single select UDF to 'Business' on the Defined Fields page
    And I set the 'Security Rights' multi select UDF to 'Code B' on the Defined Fields page
    And I click Save And 'Go to Personas'
    And I type 'Burnette' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Christine T Burnette, MD' in the search results
    And I click Journal
    And I should see the message '1 Journal Entry' on the journal page
    And I click on the Gift listed in the journal
    And I click on the User Defined Fields section on the new payment page
    And I click on the Show All Fields link in the User Defined Fields section
    And I set the 'Security Rights' multi select UDF to 'Code B' on the gift screen
    And I click Save And 'Search'
    And I click Management on the main menu
    And I click Security Groups in the Management sub-menu
    And I click New Security Group
    And I set Name of the Security Group to 'Code A'
    And I set the 'Security Rights' Code to 'Code A' on the edit Security Group page
    And I click Save
    And I click the on User 'AutomationBot' on the Security Groups page
    And I select the Code A Security Group on the Rights page
    And I click Save And 'Edit'
    And I log out of eTap
    And I login into eTap a second time with values 'automationbot_4', 'spicypancakes1'
    And I fill out the User Account Security page
    And I type 'American' into the dynamic search field
    And I press Enter on the keyboard
    And I should see the message: '0 accounts found'
    And I type 'Burnette' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Christine T Burnette, MD' in the search results
    And I click Journal
    And I should see the message '0 Journal Entries' on the journal page
    And I add an account to test Security Rights
    And I log out of eTap
    And I login into eTap a second time with values 'groundzero.us_4', 'spicypancakes1'
    And I type 'Kelsey' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Kelsey Hilton' in the search results
    And I click on 'Defined Fields' in the account header
    Then the 'Security Rights' should be set to 'Code A'
