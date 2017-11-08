Given(/^I am on the homepage$/)do
  main_page.is_displayed?
end
When(/^I click on the settings button$/)do
  main_page.find_settings.click
end 
And(/^Click on receipt quality$/)do 
  settings_page.find_receipt.click
end
Then(/^I can change the receipt quality to 100$/)do
  settings_page.find_quality.click
end