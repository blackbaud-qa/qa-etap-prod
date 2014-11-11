Feature: Add Account Classic View

  Background:
    Given I login into eTap
    And Classic View is enabled
    And I've clicked the Accounts drop down arrow
    And I click Add an Account

  Scenario: Add new account - all fields populated
    When I populate <fields> with <data>
      | fields           | data                        |
      | Name             | John Doe                    |
      | Sort Name        | Doe, John                   |
      | Address Lines    | 501 N Pennsylvania Parkway  |
      | City             | Indianapolis                |
      | State/Province   | IN                          |
      | Postal Code      | 46280                       |
      | County           | Hamilton                    |
      | Voice            | 1-800-443-9441              |
      | Email            | john@test.com               |
      | Web Page         | www.google.com              |
      | Note             | Don't call after 6pm        |
      | Short Salutation | John                        |
      | Long Salutation  | Mr. Doe                     |
      | Company          | Blackbaud                   |
    And I click Save and Go to Persona
    Then I should be taken to the Persona page of new account

  Scenario: Missing Required Fields
    Given the Name and Sort Name field are blank
    When I click Save and Go to Personas
    Then I should see the following error: Account Name: This field must be completed prior to saving. Sort Name: This field must be completed prior to saving.