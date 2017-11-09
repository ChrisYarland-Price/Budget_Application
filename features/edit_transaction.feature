Feature: Editing a transaction

	@budget_created
	@transaction_created
	Scenario: I want to edit a transaction that is already created
		Given I have a transaction
		When I click to edit it I can change the name and value fields
		Then The changes have been saved