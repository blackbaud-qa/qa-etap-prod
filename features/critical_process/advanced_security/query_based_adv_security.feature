@crit_proc7
Feature: Verify query based advanced security is working

  Background:
    ### If you change the CP number then you have to make the user login number match in the steps below ###
    Given I login into eTap for CP7

  Scenario: Add security query, create security group, log in and verify results
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'eTapestry Security' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Constituents in Indiana' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I click on the Search Fields tab on the Create a New Query page
    And I enter 'State' into the search field on the Create a New Query page
    And I press Enter on the keyboard
    And I click on 'State/Province' under Search Fields on the Create a New Query page
    And I set the State Province field to 'IN' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see '15 Accounts' results on the query preview page
    And I type 'Dorothy' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Dorothy H Barton' in the search results
    And I click Journal
    And I should see the message '1 Journal Entry' on the journal page
    And I click Management on the main menu
    And I click Security Groups in the Management sub-menu
    And I click New Security Group
    And I set Name of the Security Group to 'Indiana Chapter'
    And I set the Account Read Query to 'Constituents in Indiana'
    And I click Save
    And I click the on User 'AutomationBot' on the Security Groups page
    And I select the Indiana Chapter Security Group on the Rights page
    And I click Save And 'Edit'
    And I log out of eTap
    And I login into eTap a second time with values 'automationbot_7', 'spicypancakes2'
    And I fill out the User Account Security page
    And I type 'Dorothy' into the dynamic search field
    And I press Enter on the keyboard
    And I should see the message: '0 accounts found'
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    Then I should see '15 Accounts' results on the query preview page
    And I log out of eTap





