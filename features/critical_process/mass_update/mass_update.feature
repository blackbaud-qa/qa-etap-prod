Feature: Mass Update

   Background:
    Given I login as [USER]
    And I click on Management
    And I click on Mass Update
    And my database has [X] number of constituent accounts

    Scenario: Update Existing Account Values
      Given I click Update Existing Accounts on the Mass Update page
      When I choose the category of Base
      And I choose the query of All Constituents
      And I click on Account Type
      And I select Individual
      And I click Next on the Mass Update page
      And I click Next on the Mass Update page
      And I click Ok
      Then I should see the following message:
      [X] Accounts were updated as a result of this mass update

    Scenario: Create New Contacts
      Given I click Create New Contacts on the Mass Update page
      When I choose the category of Base
      And I choose the query of All Constituents
      And I enter "today's" date
      And I select the contact method of Email
      And I enter the subject of "Fall Appeal 2015"
      And I click Next on the Mass Update page
      And I click Next on the Mass Update page
      And I click Ok
      Then I should see the following message:
      [X] Accounts were updated as a result of this mass update

    Scenario: Empty Query
      Given I click Update Existing Accounts on the Mass Update page
      When I choose the category of Base
      And I choose the query of All Tributes
      And I click on Account Type
      And I select Individual
      And I click Next on the Mass Update page
      Then I should see the following message:
      You cannot perform your mass update because there are no accounts in your query.