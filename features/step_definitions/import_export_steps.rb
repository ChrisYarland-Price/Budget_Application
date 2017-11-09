Given(/^I am on the import page$/) do
  import_export_page.import_export_button.click
  import_export_page.import_export_button.is displayed?
end

When(/^I select JSON format and click export$/) do
  import_export_page.export_field.choose_json
end

Then(/^the export is confirmed$/) do
  import_export_page.success_field_displayed?
end