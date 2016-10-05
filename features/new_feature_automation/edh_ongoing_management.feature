@sprint
Feature: EDH Integration - Ongoing Management

  # TODO: Update Fullhouse Database once EDH us unflagged

  Background:
    Given I log out of eTap
    Given I login into eTap for CP2

  Scenario: EDH Integration - Change Notifications Email Address
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I change the edh email to 'none@none.com' in the EDH Basic Integrations Settings pop up
    And I click Save & Close on the set up EDH integration modal
    Then I verify that the EDH Notifications Email Address is set to 'none@none.com'

  Scenario: EDH Integration - Change the API Key
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit set up button on the integrations page
    And I change the edh API to 'deb30316-173e-4b70-a28c-26497c5e7969' in the EDH Basic Integrations Settings pop up
    And I click Save & Close on the set up EDH integration modal
    And I should see the edh warning message 'Invalid API key.'
    And I change the edh API to '809da48e-833f-4a2f-b66e-04c11c5718db' in the EDH Basic Integrations Settings pop up
    And I click Save & Close on the set up EDH integration modal
    Then I verify that the EDH API Key is set to '809da48e-833f-4a2f-b66e-04c11c5718db'
    And I change the edh API to '68ef0843-4714-4d24-8033-c0204fb945e2' in the EDH Basic Integrations Settings pop up
    And I click Save & Close on the set up EDH integration modal

  Scenario:  EDH Integration - Change Fund, Campaign, and Approach Mappings
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit Mappings button on the integrations page
    And I set the default eTapestry Fund to 'Unrestricted' on the set up EDH integration modal
    And I set the default eTapestry Campaign to 'Annual' on the set up EDH integration modal
    And I set the default eTapestry Approach to 'Unsolicited' on the set up EDH integration modal
    And I click Save & Close on the set up EDH campaign mapping modal
    Then I verify that the default Fund, Campaign, and Approach are set to 'Unrestricted', 'Annual', and 'Unsolicited'

  Scenario:  EDH Integration - Add a new Fund, Campaign, and Approach and then adjust the mappings
    When I click Management on the main menu
    And I click on Funds on the management menu
    And I add 'EveryDayHero Fund' as a new Fund
    And I click Save And 'View all Funds'
    And I click Management on the main menu
    And I click on Campaigns on the management menu
    And I add 'EveryDayHero Campaign' as a new Campaign
    And I click Save And 'View all Campaigns'
    And I click Management on the main menu
    And I click on Approaches on the management menu
    And I add 'EveryDayHero Approach' as a new Approach
    And I click Save And 'View all Approaches'
    And I click Management on the main menu
    And I click on Integrations on the management menu
    And I click on the Edit Mappings button on the integrations page
    And I set the default eTapestry Fund to 'EveryDayHero Fund' on the set up EDH integration modal
    And I set the default eTapestry Campaign to 'EveryDayHero Campaign' on the set up EDH integration modal
    And I set the default eTapestry Approach to 'EveryDayHero Approach' on the set up EDH integration modal
    And I click Save & Close on the set up EDH campaign mapping modal
    Then I verify that the default Fund, Campaign, and Approach are set to 'EveryDayHero Fund', 'EveryDayHero Campaign', and 'EveryDayHero Approach'

  Scenario:  EDH Integration - Pause and Resume the Integration
    When I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal
    And I click the Pause Integration link on the set up EDH integration modal
    Then I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal
    And I should see a message confirming that the integration was paused
    And I type 'smith' into the dynamic search field
    And I press Enter on the keyboard
    And I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Resume Integration link on the set up EDH integration modal
    And I should see the Resume Integration link change to Pause Integration on the set up EDH integration modal
    And I type 'tom' into the dynamic search field
    And I press Enter on the keyboard
    And I click Management on the main menu
    And I click on Integrations on the management menu
    And I click the Pause Integration link on the set up EDH integration modal
    And I should see the Pause Integration link change to Resume Integration on the set up EDH integration modal
    And I should see a message confirming that the integration was paused

#  #TODO: Do we want to automate the scenario below?
#  Scenario:  EDH Integration - Verifying previous and future import schedule dates
#    When I click Management on the main menu
#    And I click on Integrations on the management menu
#    Then I should see that the next nightly import is scheduled for tomorrow at 12:00am
#    And I should see that the last successful import occured today at 12:00am
