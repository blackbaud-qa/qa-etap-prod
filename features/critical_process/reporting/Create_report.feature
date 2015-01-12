Feature:Create a new report

  Scenario: Create a new report
    Given I am logged into eTap
    And I click on reports
    And I click on the system category
    And I click on new report
    And I name the report Test
    And I choose Fields from the commonly used report fields category
    And I choose save and run
    And I choose query category base
    And I choose query All constituents
    And I accept on the default report format Display report on screen
    When I click on submit
    Then I should see the report and all columns displayed to screen

   |Fields        |
   |Name          |
   |Address Lines |
   |City          |
   |State/Province|
   |Postal Code   |
   |Sort Name     |
   |Date          |
   |Fund          |
   |Received      |

