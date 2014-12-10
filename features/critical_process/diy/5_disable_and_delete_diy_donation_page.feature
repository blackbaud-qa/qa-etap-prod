Feature: Disable and delete diy donation page

  Background:
    Given a DIY form titled Donation Page already exists

  Scenario: disabling and deleting a diy page
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click Disable for the form titled Donation Page
    And click Yes, Disable the Page
    And click Delete for the form titled Donation Page
    And click Yes, Delete the Page
    Then the Donation Page should no longer show