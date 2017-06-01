Feature: WEB

    Scenario: Login user
        Given I am on login page
        When I submit login details

    Scenario: Login user no password
        Given I am on login page
        When I submit login details with no password

    Scenario: Login user no email
        Given I am on login page
        When I submit login details with no email

    Scenario: Signup user no passwords
        Given I am on signup page
        When I submit signup details with no passwords

    Scenario: Signup user no email
        Given I am on signup page
        When I submit signup details with no email