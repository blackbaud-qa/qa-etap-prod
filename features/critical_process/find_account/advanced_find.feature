@crit_proc9 @pipetest1
Feature: Searching from advanced find

  Background:
  Given I login into eTap for CP9

  Scenario: Searching by Name, pressing Enter
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'Jose' into the Name field
    And I press Enter on the keyboard
    Then 'Jose Berrios' should show in the advanced find name results

  Scenario: Searching by Email, pressing Enter
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'qa-1@blackbaud.com' into the Email field
    And I press Enter on the keyboard
    Then 'Talisha Almond' should show in the advanced find name results

  Scenario: Searching by Name, clicking Find
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'Jose' into the Name field
    And I click Find
    Then 'Jose Berrios' should show in the advanced find name results

  Scenario: Searching by Email, clicking Find
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
    And I type 'qa-1@blackbaud.com' into the Email field
    And I click Find
    Then 'Talisha Almond' should show in the advanced find name results

  Scenario: Searching by State and Street Name
    When I click Accounts
    And I click on Find an Account on the accounts menu
    And I click Advanced Find
#    And I set the State to 'IN' on the advanced find page
    And I set State to 'IN' on the classic add account page
#    And I type 'Fremont' into the Address Lines field
    And I set Address Lines to 'Fremont' on the classic add account page
    And I clear the email field on the advanced find page
    And I click Find
    Then 'Ed Smith' should show in the advanced find name results


