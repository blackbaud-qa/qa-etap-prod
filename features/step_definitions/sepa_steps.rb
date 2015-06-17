And(/I enter '([^']*)' in the Federal ID field$/) do |id|
  org = Management::MyOrg.new(:federal_id=>id)
  org.create
end

And(/I click Save and Go to Personas on the My Organization page$/) do
  org = Management::MyOrg.new()
  org.save_and_personas_click
end

Then(/'([^']*)' should save in the Federal ID field$/) do |id|
  org = Management::MyOrg.new()
  expect(org.federal_id).to eq('123')
end