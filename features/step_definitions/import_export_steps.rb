
Given(/^I am on the import page$/) do
  import_export_button.click
  import_export_button.is displayed?
end

When(/^I select JSON format and click export$/) do
  export_field.choose_json
end

Then(/^the export is confirmed$/) do
  success_field_displayed?
end