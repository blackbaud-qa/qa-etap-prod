@crit_proc6
Feature: Disabling a fundraiser

  Background:
    Given I login into eTap for CP6

  Scenario: disabling a Fundraiser
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page
    And I set the status to Disabled on the new Fundraiser page
    And I click Save and Finish on the new Fundraiser page
    And I sort by Status on the Fundraisers Page
    And I click on the QA Fundraiser 1 url on the Fundraiser page
    And I switch to the new tab in my browser
#    Then the registration page should not display the fundraiser
#    Then the registration confirmation page should say: 'The file you requested could not be found.'
