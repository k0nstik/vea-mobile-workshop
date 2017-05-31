Feature: 1. Filter feature

#  Scenario: Add filter
#    Given I am on intro screen
#    When I create property filter

  Scenario: Validate Slideshow
    Given I am on intro screen
    Then Validate first Slideshow screen
    When Swipe to second Slideshow screen
    Then Validate second Slideshow screen
    When Swipe to third Slideshow screen
    Then Validate third Slideshow screen

  Scenario: Create “Vakances” filter - negative
    Given Launch application
    When Navigate to create “Vakances” filter parameters page
    When Leave all parameter fields empty
    Then Press filter save button
    Then Parameter page visible

  Scenario: Create “Vakances” filter - positive
    Given Launch application
    When Navigate to create “Vakances” filter parameters page
    When Fill in filter Name and Price fields with valid data
    Then Press filter save button
    Then Validate Filter page

  Scenario: Validate Side Menu page
    Given Launch application
    Then Validate first Slideshow screen
    When Click “UZ APLIKĀCIJU” button
    Then Validate application landing screen
    When Click Side menu button
    Then Validate Side menu
    When Click “Paziņojumi”
    Then Validate Notifications page
    When Click Side menu button
    Then Validate Side menu
    When Click “Favorīti”
    Then Validate Favorites page
    When Click Side menu button
    Then Validate Side menu
    When Click “Meklēšanas filtri”
    Then Validate Filter page
    When Click Side menu button
    Then Validate Side menu
    When Click “Izveidot filtru”
    Then Validate application landing screen

  Scenario: Delete existing filter from filter page
    Given Launch application
    Then Validate first Slideshow screen
    When Click “UZ APLIKĀCIJU” button
    Then Validate application landing screen
    When Navigate to create “Vakances” filter parameters page
    When Fill in filter Name and Price fields with valid data
    Then Press filter save button
    Then Validate Filter page
    When Click Side menu button
    Then Validate Side menu
    When Click “Meklēšanas filtri”
    Then Validate Filter page
    When Open existing filter
    When Click Delete button
    Then Validate Filter page and check if filter is removed
