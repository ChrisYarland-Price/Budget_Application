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
  transaction_page.fill_in_transaction('Lambo','Debit', '20', "My husbando's lamborghini")
  # expect(transaction_page.get_budget_field.value).to eql('Sparta Global Budget')
  expect($driver.text('Sparta Global Budget').displayed?).to be true
  transaction_page.save_transaction
end
Then(/^the transaction has been created$/) do
  expect(transaction_page.get_transaction_name.displayed?).to be true
end

Given(/^i add a revenue after a budget has been created$/) do
  budget_page.budget_name.displayed?
  budget_page.budget_name.click
  # binding.pry
  transaction_page.get_revenue_tab
  transaction_page.add_transaction_button.click
end

When(/^i fill in the revenue fields$/) do
  transaction_page.fill_in_transaction("MemeEconomy", "Debit", '200', "Revenue from all our dank meme's!!!")

end

And(/^submit the form$/) do
    transaction_page.save_transaction
end

Then(/^The revenue will be created.$/) do
  transaction_page.get_revenue_tab
  puts $driver.page
  expect(transaction_page.get_transaction_name.text).to eql("MemeEconomy")

end

Given(/^i am on the transactions page.$/) do
  expect(budget_page.budget_name.displayed?).to be true
  budget_page.budget_name.click
end

When(/^i click on the back button twice.$/) do
  $driver.back()
  $driver.wait_true { budget_page.budget_name.displayed? } 
  $driver.back()
end

Then(/^I will be on the homepage.$/) do
  expect(main_page.is_displayed?).to be true
end

