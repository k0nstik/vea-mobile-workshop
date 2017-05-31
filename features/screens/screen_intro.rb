class ScreenIntro
  def initialize(driver)
    @driver = driver
    @button_to_app = Element.new(:id, 'close_intro', @driver)
    @slideshow_screen_text = Element.new(:id, 'intro_text_header', @driver)
  end

  def visible?
    @button_to_app.visible?
  end

  def close_intro
    @button_to_app.click
  end

  def validate_slideshow_screen(screen_title)
    @driver.wait { @driver.text(screen_title).displayed? }
    @slideshow_screen_text.visible?
  end

end