Given(/^I am on the import page$/) do
  import_export_page.import_export_button.click
  import_export_page.file_allow.click
end

When(/^I select JSON format and click export$/) do
  import_export_page.export_field.click
  # import_export_page.choose_json
end

Then(/^the export is confirmed$/) do
  import_export_page.sucess_field_displayed?
end