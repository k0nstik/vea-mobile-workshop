class ScreenSavedFilterData
  def initialize(driver)
    @driver = driver
    @visible_screen = Element.new(:id, 'buy_filters', @driver)
    @saved_element = Element.new(:id, 'row_filter_name', @driver)
    @delete_filter_button = Element.new(:id, 'delete_filter', @driver)
    @delete_filter_confirmation_button = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]', @driver)
  end

  def visible?
    @visible_screen.visible?
  end

  def select_saved_filter_element(name)
    @saved_element.find_elements.each do |cat|
      if cat.text == name
        cat.click
        break
      end
    end
  end

  def delete_saved_filter_data
    @delete_filter_button.click
    sleep(1)
    @delete_filter_confirmation_button.click
  end
end