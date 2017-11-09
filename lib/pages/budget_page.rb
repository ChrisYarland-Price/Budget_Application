class BudgetPage
  @@add_budget = 'protect.budgetwatch:id/action_add'
  @@budget_name_edit =  'protect.budgetwatch:id/budgetNameEdit'
  @@budget_name =  'protect.budgetwatch:id/budgetName'
  @@value_edit = 'protect.budgetwatch:id/valueEdit'
  @@save_button = 'protect.budgetwatch:id/action_save'
  @@date_range = 'protect.budgetwatch:id/dateRange'
  @@calendar_link = 'protect.budgetwatch:id/action_calendar'

  def budget_name
    $driver.find_element(:id, @@budget_name)
  end

  def is_displayed?
    $driver.find_element(:id, @@add_budget).displayed?
  end

  def get_date_range
    $driver.find_element(:id, @@date_range)
  end

  def add_budget
    $driver.find_element(:id, @@add_budget)
  end

  def budget_name_field
    $driver.find_element(:id, @@budget_name_edit)
  end

  def value_edit
    $driver.find_element(:id, @@value_edit)
  end

  def calendar_button
    $driver.find_element(:id, @@calendar_link)
  end

  def save_button
    $driver.find_element(:id, 
      @@save_button)
  end
end