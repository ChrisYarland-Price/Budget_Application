@budget_created
Feature: Interact with transactions
  
    Scenario: I can go to the transactions view by clicking a budget on the budgets view
    Given I am on the budgets page
    And a budget is displayed
    When I click the budget
    Then I am on the transactions page

  Scenario: I want to add a transaction to a budget
    Given a budget has been created
    And it has been clicked
    When I click add transaction
    And fill in the transaction fields
    Then the transaction has been created