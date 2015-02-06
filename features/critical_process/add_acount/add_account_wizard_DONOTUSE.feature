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

#  Scenario:  Step 2: Populating Account 1
#    When I populate <fields> with <data>
#      | fields           | data                   |
#      | Name             | Jane Doe               |
#      | Sort Name        | Doe, Jane              |
#      | Address Lines    | 8726 Blue Marlin Drive |
#      | City             | Indianapolis           |
#      | State/Province   | IN                     |
#      | Postal Code      | 46239                  |
#      | County           | Marion                 |
#      | Voice            | 317-319-3011           |
#      | Email            | jane@test.com          |
#      | Web Page         | www.abc.com            |
#      | Note             | Sister of Jennifer     |
#      | Short Salutation | Jane                   |
#      | Long Salutation  | Mrs. Doe               |
#      | Company          | Comcast                |
#    And I click Next
#    Then I should be taken to Account 2
#
#  Scenario: Step 2: Populating Account 2
#    When I populate <fields> with <data>
#      | fields           | data                                |
#      | Name             | Bob Jones                           |
#      | Sort Name        | Jones, Bob                          |
#      | Address Lines    | 1122 Second Street                  |
#      | City             | Greenwood                           |
#      | State/Province   | IN                                  |
#      | Postal Code      | 46233                               |
#      | County           | Johnson                             |
#      | Voice            | 317-222-3211                        |
#      | Email            | Bob@test.com                        |
#      | Web Page         | www.bob.com                         |
#      | Note             | Solicit for Holiday Gala every year |
#      | Short Salutation | Jane                                |
#      | Long Salutation  | Mr. Jones                           |
#      | Company          | Apple                               |
#    And I click Next
#    Then I should be taken to Step 3 Preview
#
#  Scenario: Step 3: Preview
#    Given Step 2 account 1 <fields> are populated with <data>
#      | fields           | data                   |
#      | Name             | Jane Doe               |
#      | Sort Name        | Doe, Jane              |
#      | Address Lines    | 8726 Blue Marlin Drive |
#      | City             | Indianapolis           |
#      | State/Province   | IN                     |
#      | Postal Code      | 46239                  |
#      | County           | Marion                 |
#      | Voice            | 317-319-3011           |
#      | Email            | jane@test.com          |
#      | Web Page         | www.abc.com            |
#      | Note             | Sister of Jennifer     |
#      | Short Salutation | Jane                   |
#      | Long Salutation  | Mrs. Doe               |
#      | Company          | Comcast                |
#    And Step 2 account 2 <fields> are populated with <data>
#      | fields           | data                                |
#      | Name             | Bob Jones                           |
#      | Sort Name        | Jones, Bob                          |
#      | Address Lines    | 1122 Second Street                  |
#      | City             | Greenwood                           |
#      | State/Province   | IN                                  |
#      | Postal Code      | 46227                               |
#      | County           | Johnson                             |
#      | Voice            | 317-222-3211                        |
#      | Email            | Bob@test.com                        |
#      | Web Page         | www.bob.com                         |
#      | Note             | Solicit for Holiday Gala every year |
#      | Short Salutation | Jane                                |
#      | Long Salutation  | Mr. Jones                           |
#      | Company          | Apple                               |
#    When I click Preview
#    Then I should see the following:
#    Preview: Jane Doe
#    Constituent: Personal (Primary)
#    8726 Blue Marlin Drive
#    Indianapolis, IN 46239
#    jane@test.com
#    Short Salutation: Jane
#    Long Salutation: Mrs. Doe
#    Voice: (317) 319-3011
#
#    Preview: Bob Jones
#    Constituent: Personal (Primary)
#    1122 Second Street
#    Greenwood, IN 46227
#    bob@test.com
#    Short Salutation: Bob
#    Long Salutation: Mr. Jones
#    Voice (317) 222-3211
#
#  Scenario: Step 4 - Save
#    Given I am on the Preview Step
#    And I see the following:
#    Preview: Jane Doe
#    Constituent: Personal (Primary)
#    8726 Blue Marlin Drive
#    Indianapolis, IN 46239
#    jane@test.com
#    Short Salutation: Jane
#    Long Salutation: Mrs. Doe
#    Voice: (317) 319-3011
#
#    Preview: Bob Jones
#    Constituent: Personal (Primary)
#    1122 Second Street
#    Greenwood, IN 46227
#    bob@test.com
#    Short Salutation: Bob
#    Long Salutation: Mr. Jones
#    Voice (317) 222-3211
#    When I click Save and Go to Personas
#    Then I should be taken to the Personas page of Jane Doe
#
#  Scenario: Blank Required field
#    Given Constituent is checked
#    And I enter 1 in the Number of Accounts field
#    And I click Next
#    And I leave the Name and Sort Name fields blank
#    When I click Next
#    Then I should see the following errors:  Account Name: This field must be completed prior to saving.  Sort Name:  This field must be completed prior to saving.