class ScreenFavorites
  def initialize(driver)
    @driver = driver
    @screen_visible_check = Element.new(:id, 'place_holder_image', @driver)
  end

  def empty_favorites_visible?
    @screen_visible_check.visible?
  end
end