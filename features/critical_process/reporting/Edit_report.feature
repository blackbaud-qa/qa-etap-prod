Feature: Edit Custom Report

  Scenario: Edit the custom report name
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on the name of the report Test
    And I click in the name field and I type in Test 1
    When I click save
    Then I should see the report renamed to Test 1

  Scenario: Edit Report Sort
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on the name of the report Test
    And I click on the plus sign next to the field Sort Name
    And I choose the sort order Z
    And I click on Save
    And I click on run
    And I choose query category base
    And I choose query All constituents
    And I accept on the default report format Display report on screen
    When I click on submit
    Then I should see the report displayed to screen with the sort order of Z through A

  Scenario: Group Report
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on the name of the report Test
    And I click on the drop down next to the field Group Report
    And I choose to group by account
    And I click on save
    And I click on run
    And I choose query category base
    And I choose query All constituents
    And I accept on the default report format Display report on screen
    When I click on submit
    Then I should see the report displayed to screen with the grouping by account

  Scenario: Delete Field name
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on the name of the report Test
    And I click on the X next to the field State/Province
    And I click on save
    And I click on run
    And I choose query category base
    And I choose query All constituents
    And I accept on the default report format Display report on screen
    When I click on submit
    Then I should see the report displayed to screen without the State/Province field



