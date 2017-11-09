Given(/^I have a transaction$/) do
	transaction_page.get_transaction_name.displayed?
end

When(/^I click to edit it$/) do
	transaction_page.get_transaction_name.click
	view_expense_page.get_expense_name.displayed?
	view_expense_page.click_edit_button
end

And(/^I change the name and value fields and save$/) do
	edit_expense_page.get_name_field.send_keys(' New')
	edit_expense_page.get_value_field.send_keys('600')
	edit_expense_page.click_save_button
end

Then(/^The changes have been saved$/) do
	transaction_page.get_transaction_name.click
	view_expense_page.get_expense_name.displayed?
	view_expense_page.get_expense_value.displayed?
	expect(view_expense_page.get_expense_name.text).to eql ('Lambo New')
	expect(view_expense_page.get_expense_value.text).to eql ('20.01')
end