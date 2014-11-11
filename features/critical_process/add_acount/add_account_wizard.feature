Feature: Add Account Wizard View

  Background:
    Given I login into eTap
    And Wizard View is enabled
    And I've clicked the Accounts drop down arrow
    And I click Add an Account

  Scenario: Step 1
    Given Constituent is checked
    And I enter 2 in the Number of Accounts field
    When I click Next
    Then I should be taken to Step 2
    And Account 1 and Account 2 should appear under Name/Persona

  Scenario:  Syep 2: Populating Account 1
    When I populate <fields> with <data>
      | fields           | data                   |
      | Name             | Jane Doe               |
      | Sort Name        | Doe, Jane              |
      | Address Lines    | 8726 Blue Marlin Drive |
      | City             | Indianapolis           |
      | State/Province   | IN                     |
      | Postal Code      | 46239                  |
      | County           | Marion                 |
      | Voice            | 317-319-3011           |
      | Email            | jane@test.com          |
      | Web Page         | www.abc.com            |
      | Note             | Sister of Jennifer     |
      | Short Salutation | Jane                   |
      | Long Salutation  | Mrs. Doe               |
      | Company          | Comcast                |
    And I click Next
    Then I should be taken to Account 2

  Scenario: Step 2: Populating Account 2
    When I populate <fields> with <data>
      | fields           | data                                |
      | Name             | Bob Jones                           |
      | Sort Name        | Jones, Bob                          |
      | Address Lines    | 1122 Second Street                  |
      | City             | Greenwood                           |
      | State/Province   | IN                                  |
      | Postal Code      | 46233                               |
      | County           | Johnson                             |
      | Voice            | 317-222-3211                        |
      | Email            | Bob@test.com                        |
      | Web Page         | www.bob.com                         |
      | Note             | Solicit for Holiday Gala every year |
      | Short Salutation | Jane                                |
      | Long Salutation  | Mr. Jones                           |
      | Company          | Apple                               |
    And I click Next
    Then I should be taken to Step 3 Preview

  Scenario: Step 3: Preview
    Given Step 2 account 1 <fields> are populated with <data>
    