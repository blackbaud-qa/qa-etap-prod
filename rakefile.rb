$: << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

# Run a bundle install if running from Jenkins
begin
  sh "bundle install" if File.dirname(__FILE__) =~ /\/(hudson|mnt)\/workspace\//
rescue Gem::RemoteFetcher::FetchError
  puts "Unable to connect - retrying #{Time.now}"
  retry
end

require 'bundler/setup'
require 'cucumber/rake/task'

module RakeHelper
  def self.cucumber_task(task_name, files=nil)
    Cucumber::Rake::Task.new(task_name) do |t|
      t.cucumber_opts = "-r features #{FileList[files]} -b -t @crit_proc -f json -o cucumber.json"
    end
  end
end

RakeHelper.cucumber_task(:quick_find, "features/critical_process/find_account/quick_find.feature")
RakeHelper.cucumber_task(:sub_menu_nav, "features/critical_process/navigation/menu_submenu_nav.feature")
RakeHelper.cucumber_task(:create_new_cart, "features/critical_process/cart/Create_new_cart.feature")
RakeHelper.cucumber_task(:advanced_find, "features/critical_process/find_account/advanced_find.feature")
RakeHelper.cucumber_task(:fundraising_1, "features/critical_process/personal_fundraising/1_create_new_fundraiser.feature")
RakeHelper.cucumber_task(:crit_proc,"features/critical_process/*")