Feature: Landing page when first launch

  Scenario: I launch the app, and I should be on landing
    Then I expect the text "Meeting" to be present
    And I expect the text "Room Booking" to be present

  Scenario: I see buttons on landing page
    Then I expect the text "Login" to be present
    And I expect the text "Sign Up to be present
