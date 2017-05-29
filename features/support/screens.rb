class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end
  def screen_base
    screen_base ||= ScreenBase.new @driver
    screen_base
  end
  def screen_intro
    screen_intro ||= ScreenIntro.new @driver
    screen_intro
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end

  def screen_select_sub_category
    @screen_select_sub_category ||= ScreenSelectSubcategory.new @driver
    @screen_select_sub_category
  end

  def screen_enter_filter_data
    screen_enter_filter_data ||= ScreenEnterFilterData.new @driver
    screen_enter_filter_data
  end

  def screen_first_slideshow
    screen_first_slideshow ||= 'Atlasi svarīgāko!'
    puts '1 ' + screen_first_slideshow
    screen_first_slideshow
  end
  #
  # def screen_second_slideshow
  #   screen_second_slideshow ||= ScreenEnterFilterData.new @driver
  #   screen_second_slideshow
  # end
  #
  # def screen_third_slideshow
  #   screen_third_slideshow ||= ScreenEnterFilterData.new @driver
  #   screen_third_slideshow
  # end
end
