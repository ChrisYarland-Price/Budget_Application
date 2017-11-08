Given(/^I can open the app$/) do
  main_page.is_displayed?
end

When(/^click on budget$/) do
  main_page.new_budget.click
end

Then(/^the budget page opens$/) do
  expect(budget_page.is_displayed?).to be true
end

When(/^I enter a budget$/) do
  main_page.new_budget.click
  budget_page.add_budget.click
  budget_page.budget_name.type("Chris's Budget")
  budget_page.value_edit.type("181")
end

And(/^save the budget$/) do
  budget_page.save_button.click
end

Then(/^the budget is saved$/) do
  budget_page.budget_is_displayed?
end

And(/^can be seen on the homepage$/) do

end
