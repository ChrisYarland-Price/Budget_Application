Given(/^I have a transaction$/) do
	transaction_page.get_transaction_name.displayed?
end

When(/^I click to edit it I can change the name and value fields$/) do
	transaction_page.get_transaction_name.click
	view_expense_page.get_expense_name.displayed?
	view_expense_page.click_edit_button
end

Then(/^The changes have been saved$/) do

end