Feature: Interact with transactions

  # @budget_created
  # Scenario: I want to add a transaction to a budget
  #   Given A budget has been created
  #   And it has been clicked
  #   When I click add transaction
  #   And fill in the transaction fields
  #   Then the transaction has been created

  # @budget_created
  # Scenario: I want to add a revenue to a budget.
  # 	Given i add a revenue after a budget has been created
  # 	When i fill in the revenue fields
  # 	And submit the form
  # 	Then The revenue will be created. 


  @budget_created
  Scenario: I want to go back from the transacions page to the main page.
  	Given i am on the transactions page. 
  	When i click on the back button twice.
  	Then I will be on the homepage. 