@crit_proc
Feature: Reports load, can be copied,moved and can be deleted

Scenario: Load reports
  Given I am logged into eTap
  When I click on reports
  Then all the 'Report Categories' should load

  |Links|
  |eTapestry Standard Reports |
  |eTapestry Benchmark Reports|
  |System                     |

  Scenario: Create Category
    Given I am logged into eTap
    And I click on reports
    And If 'Test Category' exists then delete it
    And I click on New Category
    And I name it 'Test Category'
    When I click on Save Category
    Then I should see the category listed

  Scenario: Copy Report
    Given I am logged into eTap
    And I click on the system category
    And If 'Constituent Address(Copy)' exists then delete it
    And I click on copy next to 'Constituent Address'
    Then I accept the defaults
    Then I click copy
    Then the copied report should be displayed in the system category

  Scenario: Move Report
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on move beneath 'Constituent Address(Copy)'
    And I select 'Test Category' from the new category drop down
    When I click on move
    Then I should see the report listed in the test category

  Scenario: Delete Report
    Given I am logged into eTap
    And I click on reports
    And I click on the test category
    And I click on delete next to 'Constituent Address(Copy)'
    Then I click yes on the warning message Are you sure you want to delete the item 'Constituent Address(Copy)' permanently
    When I view the Test Category the 'Constituent Address(Copy)' should be removed