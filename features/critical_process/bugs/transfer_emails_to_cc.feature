Feature: Transferring Emails to Constant Contact

#TODO: include this feature file in automated runs after we start from a ground zero database and its been set up with the wrong pw

#  Scenario: Transferring Emails when the CC credentials are incorrect
#    Given I am logged into eTap
#    When I click on the Communications drop down
#    And I click on 'Transfer Email Addresses' in the communications menu
#    Then I see the warning message: 'It appears your Constant Contact login credentials are invalid!'
#
#
#  Scenario: Transferring Emails when the CC credentials are correct
#    Given I am logged into eTap
#    When I click on the Communications drop down
#    And I click on 'Constant Contact' in the communications menu
#    And I set the CC User Name to 'etapestrydev'
#    And I set the CC Password to 'Password1105'
#    And I click Save on the Constant Contact Preferences page
#    And I click on the Communications drop down
#    And I click on 'Transfer Email Addresses' in the communications menu
#    Then I should be on the 'Constant Contact - Transfer Email Addresses' page