Feature: Editing a transaction

	@budget_created
	@transaction_created
	Scenario: I want to edit a transaction that is already created
		Given I have a transaction
		When I click to edit it
		And I change the name and value fields and save
		Then The changes have been saved