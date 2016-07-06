@bugs
Feature: When viewing an account's Journal, if the Attachments column is included a link should appear if a journal entry has an attachment uploaded.
  Provides coverage for TFS bug 636704.

  Background:
    Given I login into eTap for bugs

  Scenario: Verifying the attachments link appears for a previously uploaded attachment
    When I type 'Claire Bradley' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Claire Bradley' account
    And I click on 'Journal' in the account header
    And I click on the '1 Attachment' link for a journal entry on the journal page
    Then I verify the size of the first file in the attachments modal is not zero
    And I close the attachments modal

  Scenario: Adding a second attachment to a journal entry that already had one
    When I type 'Jimmy' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Jimmy Roberts Anderson' account
    And I click on 'Journal' in the account header
    And I click on the '1 Attachment' link for a journal entry on the journal page
    Then I verify the size of the first file in the attachments modal is not zero
    And I close the attachments modal
    And I click on the Gift listed in the journal
    And I click on the Attachment Information section of the gift page
    And I upload a file to the Attachment Information section
    And I click Save And 'Go to Journal'
    And I click on the '2 Attachments' link for a journal entry on the journal page
    Then I verify the size of the first file in the attachments modal is not zero
    And I verify the size of the second file in the attachments modal is not zero
    And I close the attachments modal

  Scenario: Adding a new attachment
    When I type 'Russell' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Russell A Bartlett' account
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And I click on the Attachment Information section of the gift page
    And I upload a file with an ampersand to the Attachment Information section
    And I click Save And 'Go to Journal'
    And I click on the '1 Attachment' link for a journal entry on the journal page
    Then I verify the size of the first file in the attachments modal is not zero
    And I close the attachments modal