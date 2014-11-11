@campaign
Feature: Campaign Creation

  Background:
    Given I login as [new Login::Admin user_login]
    And I navigate to the Campaigns page

  Scenario: Should be able to create a campaign with the minimum number of fields
    When I create a [new Campaign::EditCampaign campaign_min_fields]
    Then I should see the [campaign_min_fields] on the Campaigns page

  Scenario: Should be able to create a campaign with the full complement of fields for a campaign
    When I create a [new Campaign::EditCampaign campaign_all_values] with values
      | note         	 | Campaign note        |
      | goal             | 5000             |
      | quantity         | 56               |
    Then I should see the [campaign_all_values] on the Campaigns page

  @catch-post-failure
  Scenario: Should not be able to create a Campaign without a name
    When I create a [new Campaign::EditCampaign campaign_no_name] with values
      | name | |
    Then I should see the error: /Name: This field must be completed prior to saving./