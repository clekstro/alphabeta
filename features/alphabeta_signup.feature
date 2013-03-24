Feature: Signup
  In order to be notified of launch
  As a guest user
  I want to be able to signup

  Scenario: With an email
    Given I am a guest user
    And I visit the landing page
    When I enter my email
    And I submit the form
    Then I should see a confirmation that it was sent
    And "johndoe@example.com" should receive an email

  Scenario: With duplicate email
    Given I am a guest user
    And I visit the landing page
    When I enter an existing email
    And I submit the form
    Then I should see an error message
    And "johndoe@example.com" should receive no email
