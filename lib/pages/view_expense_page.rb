class ViewExpensePage

	@@expense_name = 'protect.budgetwatch:id/nameView'
	@@expense_value = 'protect.budgetwatch:id/valueView'
	@@edit_button = 'protect.budgetwatch:id/action_edit'

	def get_expense_name
		$driver.find_element(:id, @@expense_name)
	end

	def get_expense_value
		$driver.find_element(:id, @@expense_value)
	end

	def click_edit_button
		$driver.find_element(:id, @@edit_button).click
	end

end