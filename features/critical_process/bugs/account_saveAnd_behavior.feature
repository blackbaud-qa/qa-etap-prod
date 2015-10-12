Feature: The various 'Save And' options lead to the correct pages for a new Account.
  Provides partial coverage for TFS bug 518185. This scenario does not currently
  cover the Save And operations when duplicate checking is disabled.

  Scenario Outline: Account page Save And navigation
    Given I am logged into eTap
    And there exists constituent 'Andy Anderson'
    And I click on 'Andy Anderson' on the accounts page
    When I click tab <start_page>
    And click Save and <operation>
    Then I should be taken to 'Andy Anderson' <dest_page> page

  Examples:
  | start_page    | operation             | dest_page        |
  | Personas      | Edit                  | Personas         |
  | Personas      | Go to Relationships   | Relationships    |
  | Personas      | Go to Journal         | Journal          |
  | Personas      | Go to Defined Fields  | Defined Fields   |
  | Personas      | Go to Account         | Home             |
  | Personas      | Add Gift/Pledge       | Quick Gift Entry |
  #| Personas      | Add Recurring Gift    | Recurring Gift   |
  #| Personas      | Add Contact           | New Contact      |
  #| Personas      | Add Note              | Note             |
  #| Personas      | Add Calendar Item     | Calendar Item    |
  #| Personas      | Add Account           | New Account      |
  #| Personas      | Go to Home            | eTap Home        |
  #| Personas      | Search                | Find Account     |
