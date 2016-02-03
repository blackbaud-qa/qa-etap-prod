@crit_proc
Feature: Disable and delete diy donation page

  Background:
#    Given a DIY form titled Donation Page already exists

  Scenario: disabling and deleting a diy page
    Given I am logged into eTap
    When I click on the Management drop down
    And I click on DIY Forms on the management menu
    And I click Disable for the form titled 'Donation Page'
    And I click Yes, Disable the Page
    And I click Delete for the form titled 'Donation Page'
    And I click Yes, Delete the Page
    Then the Donation Page should no longer show