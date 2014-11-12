@approach
Feature: Approach Creation

  Background:
    Given I login as [new Login::Admin user_login]
    And I navigate to the Approaches page

  Scenario: Should be able to create an approach with the minimum number of fields
    When I create a [new Approach::EditApproach approach_min_values]
    Then I should see the [approach_min_values] on the Approaches page

  Scenario: Should be able to create an approach with the full complement of fields for a approach
    When I create a [new Approach::EditApproach approach_all_values] with values
      | note         	 | Approach note    |
      | goal             | 5000             |
      | quantity         | 56               |
    Then I should see the [approach_all_values] on the Approaches page

  @catch-post-failure
  Scenario: Should not be able to create an Approach without a name
    When I create a [new Approach::EditApproach approach_no_name] with values
      | name | |
    Then I should see the error: /Name: This field must be completed prior to saving./

  @catch-post-failure
  Scenario: Should not be able to create an Approach with a non-currency goal
    When I create a [new Approach::EditApproach approach_no_name] with values
      | goal | invalid_currency |
    Then I should see the error: /Goal: This amount must contain a valid currency amount./
