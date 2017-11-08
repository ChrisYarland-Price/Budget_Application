class BudgetPage
  @@add_budget = 'protect.budgetwatch:id/action_add'

  @@budget_name =  'protect.budgetwatch:id/budgetNameEdit'

  VALUE_EDIT = 'protect.budgetwatch:id/valueEdit'

  SAVE_BUTTON = 'protect.budgetwatch:id/action_save'

  def budget_is_displayed?
    $driver.find_element(:id, @@budget_name).displayed?
  end

  def is_displayed?
    $driver.find_element(:id, @@add_budget).displayed?
  end

  def add_budget
    $driver.find_element(:id, @@add_budget)
  end

  def budget_name
    $driver.find_element(:id, @@budget_name)
  end

  def value_edit
    $driver.find_element(:id, VALUE_EDIT)
  end

  def save_button
    $driver.find_element(:id, 
      SAVE_BUTTON)
  end
end