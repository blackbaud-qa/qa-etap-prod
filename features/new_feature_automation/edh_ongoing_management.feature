@sprint
Feature: EDH Integration

  Background:
    Given I login into eTap for deeper regression

  Scenario: EDH Integration - Change Notifications Email Address
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I enter 'qa-1@blackbaud.com' in the notifications area on the set up EDH integration modal
    And I click the Save and Close button on the set up EDH integration modal
    Then I verify that the EDH Notifications Email Address is set to 'qa-1@blackbaud.com'

  Scenario: EDH Integration - Change the API Key
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I enter 'NEW API KEY' in the API key field on the set up EDH integration modal
    And I click the Save and Close button on the set up EDH integration modal
    Then I verify that the EDH API Key is set to 'qa-1@blackbaud.com'

  Scenario:  EDH Integration - Change Fund, Campaign, and Approach Mappings
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit Mappings button on the integrations page
    And I set the default eTapestry Fund to 'Unrestricted' on the set up EDH integration modal
    And I set the default eTapestry Campaign to 'Annual' on the set up EDH integration modal
    And I set the default eTapestry Approach to 'Unsolicited' on the set up EDH integration modal
    And I click the Save and Close button on the set up EDH integration modal
    Then I verify that the Fund, Campaign, and Approach are set to 'Unrestricted', 'Annual', and 'Unsolicited'

  Scenario:  EDH Integration - Add a new Fund, Campaign, and Approach and then adjust the mappings
    When I click Management on the main menu
    And I click on Funds on the management menu
    And I add 'EveryDayHero Fund' as a new Fund
    And I click Management on the main menu
    And I click on Campaigns on the management menu
    And I add 'EveryDayHero Campaign' as a new Campaign
    And I click Management on the main menu
    And I click on Approaches on the management menu
    And I add 'EveryDayHero Approach' as a new Approach
    And I click on Integrations on the management menu
    And I click on the Edit Mappings button on the integrations page
    And I set the default eTapestry Fund to 'EveryDayHero Fund' on the set up EDH integration modal
    And I set the default eTapestry Campaign to 'EveryDayHero Campaign' on the set up EDH integration modal
    And I set the default eTapestry Approach to 'EveryDayHero Approach' on the set up EDH integration modal
    And I click the Save and Close button on the set up EDH integration modal
    Then I verify that the Fund, Campaign, and Approach are set to 'Unrestricted', 'Annual', and 'Unsolicited'

  Scenario:  EDH Integration - Pause and Resume the Integration
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Pause Integration link on the set up EDH integration modal
    Then I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal
    And I should see a message confirming that the integration was paused today
    And I type 'smith' into the dynamic search field
    And I press Enter on the keyboard
    And I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal
    And I type 'tom' into the dynamic search field
    And I press Enter on the keyboard
    And I click on Integrations on the management menu
    And I click the Pause Integration link on the set up EDH integration modal
    And I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal
    And I should see a message confirming that the integration was paused today
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal

  Scenario:  EDH Integration - Verifying previous and future import schedule dates
    When I click Management on the main menu
    And I click on Integrations on the management menu
    Then I should see that the next nightly import is scheduled for tomorrow at 12:00am
    And I should see that the last successful import occured today at 12:00am
