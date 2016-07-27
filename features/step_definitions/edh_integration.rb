When(/^I click on Integrations on the management menu$/) do
  intMan = Management::EdhIntegration.new
  intMan.management_integrations_click
end

Then(/^I should be taken to the Integrations page$/) do
  intMan = Management::EdhIntegration.new
  expect(intMan.on_integrations_page?).to eq(true)
end