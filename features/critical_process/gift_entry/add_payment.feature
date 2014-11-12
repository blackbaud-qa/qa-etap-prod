Feature: Adding a payment

  Scenario: Add a payment to a newly created pledge
    Given I am logged into eTap
    And a pledge already exists on Gail Burch's account
    When I type /14 into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And click the plus sign next to the pledge dated 8/20/2090
    And set the Date 9/1/2090
    And set the Gift Type to Check
    And set the Check Date to 9/1/2090
    And set the Check Number to 6245
    And click Save And Edit
    Then the payment should be saved properly
    And linked to the original pledge