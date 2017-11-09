
Feature: I am able to export my revenue

  Scenario: I can export my revenue data
    Given I am on the import page
    When I select JSON format and click export
    Then the export is confirmed
