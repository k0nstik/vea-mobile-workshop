class TestIntro
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def is_it_first_slideshow?
    text = @screens.screen_first_slideshow
    @screens.screen_intro.validate_slideshow_screen(text)
  end

  def is_it_second_slideshow?
    text = @screens.screen_second_slideshow
    @screens.screen_intro.validate_slideshow_screen(text)
  end

  def is_it_third_slideshow?
    text = @screens.screen_third_slideshow
    @screens.screen_intro.validate_slideshow_screen(text)
  end


end
