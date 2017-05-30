class TestIntro
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def is_it_first_slideshow?
    text = @screens.screen_first_slideshow
    puts '1 ' + text
    @screens.screen_intro.validate_slideshow_screen(text)
  end

  def is_it_second_slideshow?
    text = @screens.screen_second_slideshow
    puts '2 ' + text
    @screens.screen_intro.validate_slideshow_screen(text)
  end

  def is_it_third_slideshow?
    text = @screens.screen_third_slideshow
    puts '3 ' + text
    @screens.screen_intro.validate_slideshow_screen(text)
  end


end
