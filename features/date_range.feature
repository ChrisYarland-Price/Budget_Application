Feature: Date range

  Scenario: I want to change the date range for my budgets
    Given I am on the budget page
    When I click the calendar button
    And select a start date
    And select an end date
    And I click set
    Then the date range for my budgets has been updated