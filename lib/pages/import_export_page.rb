class ExportPage
  @@import_export_button = 'protect.budgetwatch:id/action_import_export'

  @@export_field =  '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.Spinner/android.widget.TextView'

  @@android_file_allow = 'com.android.packageinstaller:id/permission_allow_button'

  @@success_field =  'protect.budgetwatch:id/title_template'

  @@json_field = '/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]'

  def import_export_button
    $driver.find_element(:id, @@import_export_button)
  end

  def file_allow
    $driver.find_element(:id, @@android_file_allow)
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