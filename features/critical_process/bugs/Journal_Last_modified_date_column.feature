Feature: Adding Last modified Date column to Journal Page

  Background:
    Given:I login into eTap for bugs

    Scenario:  Adding Last modified Date column to Journal Page
      When I type 'Joel A Roberts' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'Joel A Roberts' in the search results
      And I click on 'Journal' in the account header
      And I click choose columns
      And  I mark the checkbox for last modified date
      And I click on apply changes
      Then I should see last modified date on Journal Page

