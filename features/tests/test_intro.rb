class TestIntro
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  # def intro_visible
  # end

  def is_it_first_slideshow?
    text = @screens.screen_first_slideshow
    puts '2 ' + text
    @screens.screen_intro.validate_first_slide_screen(text)
  end
end
