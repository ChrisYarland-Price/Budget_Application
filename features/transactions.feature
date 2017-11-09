@budget_created
Feature: Interact with transactions
  
    Scenario: I can go to the transactions view by clicking a budget on the budgets view
    Given I am on the budgets page
    And a budget is displayed
    When I click the budget
    Then I am on the transactions page

  Scenario: I want to add a transaction to a budget
    Given A budget has been created
    And it has been clicked
    When I click add transaction
    And fill in the transaction fields
    Then the transaction has been created

  Scenario: I want to add a revenue to a budget.
  	Given i add a revenue after a budget has been created
  	When i fill in the revenue fields
  	And submit the form
  	Then The revenue will be created. 


  Scenario: I want to go back from the transacions page to the main page.
  	Given i am on the transactions page. 
  	When i click on the back button twice.
  	Then I will be on the homepage. 

