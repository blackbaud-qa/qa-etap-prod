Feature: Adding a gift with payment type of credit card and process it

  Scenario: Adding and processing a credit card gift
    Given I am logged into eTap
    When I type /42 into the dynamic search field
    And I press Enter on the keyboard
    And click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date to 10/30/2090
    And set the Received Amount to 7.00
    And set the Fund to Unrestricted
    And set the Campaign to Annual
    And set the Approach to Unsolicited
    And set the Gift Type is set to Credit/Debit Card
    And set the Credit/Debit Card Number to 4111111111111111
    And set the Expiration Date to 12/2034
    And click Save And Process Transaction
    Then the gift should process
    And the gift should save properly