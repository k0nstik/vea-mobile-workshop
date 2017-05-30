class ScreenSavedFilterData
  def initialize(driver)
    @driver = driver
    @visible_screen = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]', @driver)
  end

  def visible?
    @visible_screen.visible?
  end
end