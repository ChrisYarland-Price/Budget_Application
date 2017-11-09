class ViewExpensePage

	@@name_field = 'protect.budgetwatch:id/nameEdit'
	@@value_field = 'protect.budgetwatch:id/valueEdit'
	@@save_button = 'protect.budgetwatch:id/action_save'

	def get_name_field
		$driver.find_element(:id, @@name_field)
	end

	def get_value_field
		$driver.find_element(:id, @@value_field)
	end

	def click_save_button
		$driver.find_element(:id, @@save_button).click
	end

end