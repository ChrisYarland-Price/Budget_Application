Given(/^A budget has been created$/) do
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
  # expect(transaction_page.get_budget_field.value).to eql('Sparta Global Budget')
  expect($driver.text('Sparta Global Budget').displayed?).to be true
  transaction_page.save_transaction
end
Then(/^the transaction has been created$/) do
  expect(transaction_page.get_transaction_name.displayed?).to be true
end