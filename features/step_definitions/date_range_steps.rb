Given(/^I am on the budget page$/) do
  main_page.new_budget.click
  budget_page.get_date_range.displayed?
  @og_date = budget_page.get_date_range
end
When(/^I click the calendar button$/) do
  budget_page.calendar_button.click
end
And(/^select a start date$/) do
  calendar_page.select_start_date
end
And(/^select an end date$/) do
  calendar_page.select_end_date
end
And(/^I click set$/) do
  calendar_page.set.click
  sleep 5
end
Then(/^the date range for my budgets has been updated$/) do
  expect(budget_page.get_date_range).not_to eql(@og_date)
end