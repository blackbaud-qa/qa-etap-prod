And (/^I run the Generate Account Summary Report from the account's Home page/) do
  run_report = Reports::Standardreports.new
  run_report.generate_account_summary_report
end