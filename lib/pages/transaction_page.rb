class TransactionPage
  # transactions
  @@add_transaction = 'protect.budgetwatch:id/action_add'
  @@name_edit_field = 'protect.budgetwatch:id/nameEdit'
  @@budget_field = 'protect.budgetwatch:id/budgetSpinner'
  @@budget_field = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TableLayout/android.widget.TableRow[2]/android.widget.LinearLayout/android.widget.Spinner'
  @@account_field = 'protect.budgetwatch:id/accountEdit'
  @@value_field = 'protect.budgetwatch:id/valueEdit'
  @@note_field = 'protect.budgetwatch:id/noteEdit'
  @@save = 'protect.budgetwatch:id/action_save'
  @@transaction_name = 'protect.budgetwatch:id/name'
  @@revenue_name = 'protect.budgetwatch:id/name'

  # Revenue Specific
  @@revenue_tab = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]'
  @@revenue_date_field = 'protect.budgetwatch:id/dateEdit'


  def add_transaction_button
    $driver.find_element(:id, @@add_transaction)
  end
  def enter_name_field(name)
    $driver.find_element(:id, @@name_edit_field).send_keys(name)
  end
  def get_budget_field
    $driver.find_element(:xpath, @@budget_field)
  end
  def enter_account_field(account)
    $driver.find_element(:id, @@account_field).send_keys(account)
  end
  def enter_value_field(value)
    $driver.find_element(:id, @@value_field).send_keys(value)
  end
  def enter_note_field(notes)
    $driver.find_element(:id, @@note_field).send_keys(notes)
  end
  def save_transaction
    $driver.find_element(:id, @@save).click
  end

  def fill_in_transaction(name, account, value, notes)
    enter_name_field(name)
    enter_account_field(account)
    enter_value_field(value)
    enter_note_field(notes)
  end

  def get_transaction_name
    $driver.find_element(:id, @@transaction_name)
  end

  def get_revenue_tab
    Appium::TouchAction.new.tap( x: 1206, y: 393, count: 3).release.perform
  end



end