Given(/^I am on the budgets page$/) do
  budget_page.get_date_range.displayed?
end
And(/^a budget is displayed$/) do
  budget_page.budget_name.displayed?
end
When(/^I click the budget$/) do
  budget_page.budget_name.click
end
Then(/^I am on the transactions page$/) do
  expect($driver.text('EXPENSES').displayed?).to be true
end

Given(/^a budget has been created$/) do
  budget_page.budget_name.displayed?
end
And(/^it has been clicked$/) do
  budget_page.budget_name.click
end
When(/^I click add transaction$/) do
  transaction_page.add_transaction_button.click
end
And(/^fill in the transaction fields$/) do
  transaction_page.fill_in_transaction
  expect($driver.text('Sparta Global Budget').displayed?).to be true
  transaction_page.save_transaction
end
Then(/^the transaction has been created$/) do
  expect(transaction_page.get_transaction_name.displayed?).to be true
end