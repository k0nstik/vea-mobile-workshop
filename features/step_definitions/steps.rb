# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on intro screen$/ do
    if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
        $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
    end
    @screens.screen_intro.visible?
end


Given /^I create property filter$/ do
    @tests.test_add_filter.close_intro
    @tests.test_add_filter.open_filter_parameter_screen
end

Given /^Launch application$/ do
    @screens.screen_intro.visible?
end

Then /^Validate first Slideshow screen/ do
    @tests.test_intro.is_it_first_slideshow?
end

When /^Navigate to create “Vakances” filter parameters page/ do
    @screens.screen_intro.close_intro
    @tests.test_add_filter.open_filter_parameter_screen
end

When /^Leave all parameter fields empty/ do
    @screens.screen_enter_filter_data.visible?
    @screens.screen_enter_filter_data.filter_enter_data ''
end

When /^Press filter save button/ do
    @screens.screen_enter_filter_data.filter_click_save
    sleep(5)
end

Then /^Parameter page visible/ do
    @screens.screen_enter_filter_data.visible?
end




