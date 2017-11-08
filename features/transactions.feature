Feature: Interact with transactions

  @budget_created
  Scenario: I want to add a transaction to a budget
    Given A budget has been created
    And it has been clicked
    When I click add transaction
    And fill in the transaction fields
    Then the transaction has been created