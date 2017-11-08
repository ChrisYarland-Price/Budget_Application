class SettingsPage

  @@Receipt_Button = 'android:id/title'
  @@Quality_Max = 'android:id/text1'

  def find_receipt
    $driver.find_element(:id, @@Receipt_Button)
  end

  def find_quality
    $driver.find_elements(:id, @@Quality_Max)[5]
  end
end