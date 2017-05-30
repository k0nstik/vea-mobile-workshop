class ScreenBase
  def initialize(driver)
    @driver = driver
    @side_menu_button = Element.new(:class, 'android.widget.ImageButton', @driver)
    @side_menu_settings_button = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]', @driver)
    @side_menu_element = Element.new(:id, 'item_name', @driver)
  end

  def swipe_left
    @driver.swipe(:start_x => 0.95, :delta_x => -0.9, duration:500)
  end

  def swipe_right
    @driver.swipe(:start_x => 0.05, :delta_x => 0.90, duration:500)
  end

  def press_side_menu_button
    @side_menu_button.click
  end

  def menu_settings_visible?
    @side_menu_settings_button.visible?
  end

  def side_menu_element_click(name)
    @side_menu_element.find_elements.each do |cat|
      if cat.text == name
        cat.click
        break
      end
    end
  end
end
