class CalendarPage

  @@next_month = 'android:id/next'
  @@month_views = 'android:id/month_view'
  @@start_date = '//android.view.View[@content-desc="03 December 2017"]'
  @@end_date = '//android.view.View[@content-desc="03 January 2018"]'
  @@set_link = 'android:id/button1'
  
  def select_start_date
    $driver.find_element(:id, @@next_month).click
    $driver.find_element(:xpath, @@start_date).click
  end
  
  def select_end_date
    Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform
    2.times do
      $driver.find_element(:id, @@next_month).click
    end
    $driver.find_element(:xpath, @@end_date).click
  end
  
  def set
    $driver.find_element(:id, @@set_link)
  end
end