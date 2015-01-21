Feature: Registering a participant

  Background:
    Given I have a processor set up in my database
    And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: registering a participant
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And I click on the QA Fundraiser [X] url
    And I click Register
    And I select I need to create an account
    And I click Next
    And set the following <fields> to these <values>
    And click Next
    And set the Gender to Male
    And click Next
    And select Create a New Team
    And click Next
    And set the Name to Team Awesome
    And click Next
    And set the Participation Level to Runner $25
    And mark the checkbox next to Use my account information for billing.
    And set the card type to Visa
    And set the Card Number to 4111111111111111
    And set the Security Code to 435
    And set the Expiration Year to 2035
    And click Next
    And click Next
    Then the registration confirmation page should say: Thank you for registering. You should receive a confirmation email shortly.

    Examples:
      | fields                             | values                       |
      | First Name                         | John                         |
      | Last Name                          | Crabtree                     |
      | Email (this will be your login id) | qa-1@blackbaud.com           |
      | Password                           | abc123                       |
      | Confirm Password                   | abc123                       |
      | Security Question                  | What is your favorite color? |
      | Security Answer                    | green                        |
      | Country                            | United States                |
      | Address                            | 234 Main St.                 |
      | City                               | Indianapolis                 |
      | State/Province                     | Indiana                      |
      | Postal Code                        | 46280                        |
      | Phone                              | 3172223456                   |

  Scenario: logging into a fundraiser
    Given I have already registered John Crabtree
    And I am on the registration confirmation page for the QA Fundraiser [X]
    When I click Login
    And set the Email to qa-1@blackbaud.com
    And set the password to abc123
    And click Login
    Then the Fundraising Center page should say: Fundraising Center for John Crabtree

  Scenario: verify the registered participant is in the database with participation
    Given I am logged into eTap
    And I have already registered John Crabtree
    When I click Accounts on the main menu
    And type John Crabtree into the Search For field
    And I click Find
    And click on John Crabtree
    And navigate to the Journal page for his account
    Then there should be a Participation journal entry marked with Today's date

  Scenario: verify the team was created in the database
    Given I am logged into eTap
    And I have already registered John Crabtree
    When I click Accounts on the main menu
    And type Awesome into the Search For field
    And I click Find
    Then Team Awesome should appear in the results