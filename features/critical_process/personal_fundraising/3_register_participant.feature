@crit_proc
Feature: Registering a participant

#  Background:
#    Given I have a processor set up in my database
#    And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: registering a participant
    Given I am logged into eTap
    When I delete existing data for 'John Crabtree'
    And I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the QA Fundraiser 1 url on the Fundraiser page
    And I switch to the new tab in my browser
    And I click Register on the live fundraiser page
    And I select I need to create an account on the live fundraiser page
    And I click Next on the live fundraiser page
    And I set the First Name field to 'John' on the live fundraiser page
    And I set the Last Name field to 'Crabtree' on the live fundraiser page
    And I set the Email field to 'lance.moore@blackbaud.com' on the live fundraiser page
    And I set the Password field to 'abc123' on the live fundraiser page
    And I set the Confirm Password field to 'abc123' on the live fundraiser page
    And I set the Security Question to 'What is your favorite color?' on the live fundraiser page
    And I set the Security Answer to 'green' on the live fundraiser page
    And I set the Country to 'United States' on the live fundraiser page
    And I set the Address to '234 Main St.' on the live fundraiser page
    And I set the City to 'Indianapolis' on the live fundraiser page
    And I set the State to 'Indiana' on the live fundraiser page
    And I set the Postal Code to '46280' on the live fundraiser page
    And I set the Phone to '3172223456' on the live fundraiser page
    And I click Next on the live fundraiser page
    And I set the Gender to 'Male' on the live fundraiser page
    And I click Next on the live fundraiser page
    And I select Create a New Team on the live fundraiser page
    And I click Next on the live fundraiser page
    And I set the Name to 'Team Awesome' on the live fundraiser page
    And I click Next on the live fundraiser page
    And I set the Participation Level to Runner on the live fundraiser page
    And I mark the checkbox next to Use my account information for billing on the live fundraiser page
    And I select credit card for payment method on the live fundraiser page
    And I set the card type to 'Visa' on the live fundraiser page
    And I set the Card Number to '4111111111111111' on the live fundraiser page
    And I set the Security Code to '435' on the live fundraiser page
    And I set the Expiration Month to '3' on the live fundraiser page
    And I set the Expiration Year to '2035' on the live fundraiser page
    And I click Next on the live fundraiser page
    And I click Next on the live fundraiser page
    Then the registration confirmation page should say: 'Thank you for registering. You should receive a confirmation email shortly.'
    And I close the current tab

  Scenario: logging into a fundraiser
    Given I am logged into eTap
    And I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the QA Fundraiser 1 url on the Fundraiser page
    And I switch to the new tab in my browser
    When I click Login on the live fundraiser page
    And I set the Email to 'lance.moore@blackbaud.com' on the live fundraiser login page
    And I set the password to 'abc123' on the live fundraiser login page
    And I click Login on the live fundraiser login page
    Then the Fundraising Center page should say: 'Fundraising Center for John Crabtree'
    And I close the current tab

  Scenario: verify the registered participant is in the database with participation
    Given I am logged into eTap
  When I click Accounts on the main menu
  And I type 'John Crabtree' into the search field
  And I press Enter on the keyboard
  And I click on 'John Crabtree' on the accounts page
  And I click Journal
  Then there should be a Participation journal entry

  Scenario: verify the team was created in the database
    Given I am logged into eTap
    When I click Accounts on the main menu
    And I type 'Awesome' into the search field
    And I press Enter on the keyboard
    Then 'Team Awesome' should show in the results
