
  Feature: Adding Recurring Gift To Stopped Recurring Gift Schedule

    Background:
      Given: I Login into eTap for bugs

      Scenario: Adding Recurring Gift To Stopped Recurring Gift Schedule
        When  I click Accounts on the main menu
        And  I click on Find an Account on the accounts menu
        And I type 'Cindy Grant' into the Name field
        And I press Enter on the keyboard
        And I click on 'Cindy Grant' in the Search Results
        And I click Journal
        And I click Recurring Gift Schedule
        Then I should see stop date is less than current date
        And I click Journal
        And I click 'Add' Button
        And I click on 'Recurring Gift' on Add Journal Entry
        Then I should see the message 'This account has no available recurring gift schedules, therefore you cannot create a new recurring gift' on the Journal Page
