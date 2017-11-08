
class BudgetPage
  @@import_export_button = 'protect.budgetwatch:id/action_import_export'

  @@export_field =  'android:id/text1'

  @@success_field =  'protect.budgetwatch:id/title_template'

  @@json_field = '/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]'

  def import_export_button
    $driver.find_element(:id, @@import_export_button)
  end

  def export_field
    $driver.find_element(:id, @@export_field)
  end

  def choose_json
    $driver.find_element(:id, @@json_field).click
  end

  def sucess_field_displayed?
    $driver.find_element(:id, @@success_field).displayed?
  end
end

