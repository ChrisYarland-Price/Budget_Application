class MainPage
  BUDGET_AND_TRANSACTION = 'protect.budgetwatch:id/action_settings'
  @@new_budget = 'protect.budgetwatch:id/menu'
  @@settings_button = 'protect.budgetwatch:id/action_settings'

  def is_displayed?
    $driver.wait_true{
      $driver.find_elements(:id, BUDGET_AND_TRANSACTION)[0].displayed?
    }
  end

  def new_budget
    $driver.find_element(:id, @@new_budget)
  end

  def find_settings
    $driver.find_element(:id, @@settings_button)
  end
end