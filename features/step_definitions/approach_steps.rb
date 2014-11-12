Given /^I navigate to the Approaches page/ do
  Approach::Approaches.new.home
end

Given /^I create a (\[new Approach::EditApproach \S+\])$/ do |model|
  Approach::EditApproach.new(model).create
end

Given /^I create a (\[new Approach::EditApproach \S+\]) with values$/ do |model, table|
  Approach::EditApproach.new(model.merge_cucumber_table(table)).create
end

Then /^I should see the (\[[^\]]+\]) on the Approaches page/ do |model|
  Approach::EditApproach.new(model).verify
end
