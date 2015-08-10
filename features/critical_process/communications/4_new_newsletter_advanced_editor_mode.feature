@crit_proc
Feature: Creating a new communications template

#  Background:
#    Given a custom account query has been created for Talisha Almond
#    And the email address on this account's primary person is set to qa-1@blackbaud.com

  Scenario: creating a newsletter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click New Email or Document Template
    And set the Name to 'Simplicity - Advanced Editor Mode'
    And click Tab
#    And verify that the Subject now says Simplicity - Advanced Editor Mode
    And I click Next on the new Correspondence Template page
    And I click on the 'Simplicity' newsletter template
    And click Advanced Modes

#  Excluding image manipulation for now, since it doesn't automate well
#    And double click the image to open the Insert/edit image pop up
#    And click the browse icon
#    And click Browse
#    And select an image from my computer
#    And click Upload
#    And click the uploaded image
#    And click Ok

#Since TinyMCE is difficult to manipulate with automation, perhaps we could
#develop some specific content that would be simple to automate, but would
#still exercise the underlying code?
#More info here:  http://watirwebdriver.com/wysiwyg-editors/

#    And select all the text in the first article
#    And set the font to Comic Sans
#    And select the title in the first article
#    And set the size to 16pt
#    And change the title to Something Interesting
#    And change the subtitle to Is what this is about
#    And add another line below the first paragraph in the first article
#    And type in Google and Email Us
#    And highlight Google
#    And create a hyperlink to www.google.com
#    And highlight Email Us
#    And create a hyperlink to mailto:qa-1@blackbaud.com

    And click Save And Mass Email
    And I select Advanced Mass Email on the Mass Email page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And I click Next on the Mass Email page
    And I set the Name to 'eTapestry QA' on the Mass Email page
    And I set both Email fields to 'qa-1@blackbaud.com' on the Mass Email page
    And I click Next on the Mass Email page
    And I click Next on the Mass Email page
    And I click Send on the Mass Email page

#No good way to check the email at this point.  We may be able to setup
#A web based email account and automate checking it there, but that will
#require further discussion.
#    Then the email should send successfully to qa-1@blackbaud.com
#    And when you open the email it should display properly with your changes
#    And the Google link should work
#    And the Email Us link should work