class ExportPage
  @@import_export_button = 'protect.budgetwatch:id/action_import_export'

  @@export_field =  'protect.budgetwatch:id/exportFileFormatSpinner'

  @@android_file_allow = 'com.android.packageinstaller:id/permission_allow_button'

  @@success_field =  'protect.budgetwatch:id/title_template'

  @@json_field = 'android:id/text1'

  @@export_button = 'protect.budgetwatch:id/exportButton'

  def import_export_button
    $driver.find_element(:id, @@import_export_button)
  end

  def file_allow
    $driver.find_element(:id, @@android_file_allow)
  end
  
  def export_field
    $driver.find_element(:id, @@export_button)
  end

  def choose_json

    $driver.find_elements(:id, @@json_field)[1].click
  end

  def sucess_field_displayed?
    $driver.find_element(:id, @@success_field).displayed?
  end
end