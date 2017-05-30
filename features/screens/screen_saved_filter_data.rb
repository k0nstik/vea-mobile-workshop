class ScreenSavedFilterData
  def initialize(driver)
    @driver = driver
    @visible_screen = Element.new(:id, 'buy_filters', @driver)
  end

  def visible?
    @visible_screen.visible?
  end
end