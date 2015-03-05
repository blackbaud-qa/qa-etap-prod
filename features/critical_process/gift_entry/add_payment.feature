#This is no longer ready.  I think the existing pledge was either fulfilled,
#or something else has changed with the UI.  There is no date field after clicking
#journal.
Feature: Adding a payment

  Scenario: Add a payment to a newly created pledge
    Given I am logged into eTap
#    And a pledge already exists on Gail Burch's account
    When I type '/14' into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And click the date field
    And set the Date '9/1/2090'
    And set the Gift Type to Check
    And set the Check Date field to '9/1/2090'
    And set the Check Number field to '6245'
    And select Edit from the drop down menu
    And click Save and Edit
