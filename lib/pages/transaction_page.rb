class TransactionPage
  @@add_transaction = 'protect.budgetwatch:id/action_add'
  @@name_edit_field = 'protect.budgetwatch:id/nameEdit'
  @@budget_field = 'protect.budgetwatch:id/budgetSpinner'
  @@budget_field = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TableLayout/android.widget.TableRow[2]/android.widget.LinearLayout/android.widget.Spinner'
  @@account_field = 'protect.budgetwatch:id/accountEdit'
  @@value_field = 'protect.budgetwatch:id/valueEdit'
  @@note_field = 'protect.budgetwatch:id/noteEdit'
  @@save = 'protect.budgetwatch:id/action_save'
  @@transaction_name = 'protect.budgetwatch:id/name'

  def add_transaction_button
    $driver.find_element(:id, @@add_transaction)
  end
  def enter_name_field
    $driver.find_element(:id, @@name_edit_field).send_keys('Lambo')
  end
  def get_budget_field
    $driver.find_element(:xpath, @@budget_field)
  end
  def enter_account_field
    $driver.find_element(:id, @@account_field).send_keys('Debit')
  end
  def enter_value_field
    $driver.find_element(:id, @@value_field).send_keys('20')
  end
  def enter_note_field
    $driver.find_element(:id, @@note_field).send_keys("My husbando's lamborghini")
  end
  def save_transaction
    $driver.find_element(:id, @@save).click
  end

  def fill_in_transaction
    enter_name_field
    enter_account_field
    enter_value_field
    enter_note_field
  end

  def get_transaction_name
    $driver.find_element(:id, @@transaction_name)
  end
end