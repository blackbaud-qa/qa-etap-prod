Given /^I navigate to the Campaigns page/ do
  Campaign::Campaigns.new.home
end

Given /^I create a (\[new Campaign::EditCampaign \S+\])$/ do |model|
  Campaign::EditCampaign.new(model).create
end

Given /^I create a (\[new Campaign::EditCampaign \S+\]) with values$/ do |model, table|
  Campaign::EditCampaign.new(model.merge_cucumber_table(table)).create
end

Then /^I should see the (\[[^\]]+\]) on the Campaigns page/ do |model|
  Campaign::EditCampaign.new(model).verify
end
