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


Given /^Launch application$/ do
  if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
    $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
  end
  @screens.screen_intro.visible?
end

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

Then /^Validate first Slideshow screen/ do
  @tests.test_intro.is_it_first_slideshow?
end

When /^Swipe to second Slideshow screen/ do
  @screens.screen_base.swipe_left
end

Then /^Validate second Slideshow screen/ do
  @tests.test_intro.is_it_second_slideshow?
end

When /^Swipe to third Slideshow screen/ do
  @screens.screen_base.swipe_left
end

Then /^Validate third Slideshow screen/ do
  @tests.test_intro.is_it_third_slideshow?
end

When /^Navigate to create “Vakances” filter parameters page/ do
  if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "Uz aplikāciju")]').size > 0
    $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "Uz aplikāciju")]').click
  end
  # @screens.screen_intro.close_intro
  @tests.test_add_filter.open_filter_parameter_screen
end

When /^Leave all parameter fields empty/ do
  @screens.screen_enter_filter_data.visible?
  @tests.test_add_filter.enter_no_data_to_filter_vakances
end

When /^Fill in filter Name and Price fields with valid data/ do
  @screens.screen_enter_filter_data.visible?
  @tests.test_add_filter.enter_data_to_filter_vakances
end

When /^Press filter save button/ do
  @screens.screen_enter_filter_data.filter_click_save
  sleep(3)
end

Then /^Parameter page visible/ do
  @screens.screen_enter_filter_data.visible?
end

Then /^Validate Filter page/ do
  @screens.screen_saved_filter_data.visible?
end

When /^Click “UZ APLIKĀCIJU” button/ do
  @screens.screen_intro.close_intro
  sleep(2)
end

Then /^Validate application landing screen/ do
  @screens.screen_create_filter.visible?
end

When /^Click Side menu button/ do
  @screens.screen_base.press_side_menu_button
end

Then /^Validate Side menu/ do
  @screens.screen_base.menu_settings_visible?
end

When /^Click “Paziņojumi”/ do
  @screens.screen_base.side_menu_element_click('Paziņojumi')
end

Then /^Validate Notifications page/ do
  @screens.screen_notifications.empty_notifications_visible?
end

When /^Click “Favorīti”/ do
  @screens.screen_base.side_menu_element_click('Favorīti')
end

Then /^Validate Favorites page/ do
  @screens.screen_favorites.empty_favorites_visible?
end

When /^Click “Meklēšanas filtri”/ do
  @screens.screen_base.side_menu_element_click('Meklēšanas filtri')
end

When /^Click “Izveidot filtru”/ do
  @screens.screen_base.side_menu_element_click('Izveidot filtru')
end

When /^Open existing filter/ do
  @tests.test_delete_filter.open_existing_filter
end

When /^Click Delete button/ do
  @tests.test_delete_filter.delete_saved_filter
end