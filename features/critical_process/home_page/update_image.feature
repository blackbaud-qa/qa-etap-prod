Feature: Update account image

Scenario: update the account image
Given I logged into etapestry
And I am on an account
And I am on the home page
And I am in the picture tile
And I click on update
When I browse and select image1.jpg
Then I should see the transaction on the journal page