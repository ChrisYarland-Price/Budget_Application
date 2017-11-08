Before do
  $driver.start_driver
end

Before('@budget_created') do
  main_page.new_budget.click
  budget_page.add_budget.click
  budget_page.budget_name_field.type("Sparta Global Budget")
  budget_page.value_edit.type("10000")
    budget_page.save_button.click
end

After do
  $driver.driver_quit
end