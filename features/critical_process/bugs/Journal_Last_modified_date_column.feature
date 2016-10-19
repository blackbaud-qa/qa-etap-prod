#@bugs
# TODO: This test is failing in the last line where it checks for the date,
#   most likely due to searching in the right-most cell, which Watir appears
#   to have an issue locating. Will revisit to see how to properly locate that value.
Feature: Adding Last modified Date column to Journal Page

  Background:
    Given I login into eTap for bugs

    Scenario:  Adding Last modified Date column to Journal Page
      When I type 'Jimmy' into the dynamic search field
      And I press Enter on the keyboard
      And I click on 'Jimmy Roberts Anderson' in the search results
      And I click on 'Journal' in the account header
      And I click choose columns
      And  I mark the checkbox for last modified date
      And I click on apply changes
      Then I should see last modified date on Journal Page
      And I should see '6/8/2016' listed in the last modified date column




