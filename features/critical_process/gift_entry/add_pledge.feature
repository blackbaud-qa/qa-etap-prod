Feature: Adding a pledge

  Scenario: Add a pledge from the journal page
    Given I am logged into eTap
    When I type /14 into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date to 8/20/2090
    And set the Pledged Amount to 240
    And set the Fund to Unrestricted
    And set the Campaign to Annual
    And set the Approach to Direct Mail
    And I click Create Pledge Schedule
    And set the Frequency to Monthly
    And set the First Installment Date to 9/1/2090
    And set the Installment Amount to 20
    And click Save And Edit
    Then the pledge should save properly
    And the pledge schedule should be created