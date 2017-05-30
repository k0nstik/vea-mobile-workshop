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

  def screen_saved_filter_data
    screen_saved_filter_data ||= ScreenSavedFilterData.new @driver
    screen_saved_filter_data
  end

  def screen_notifications
    screen_notifications ||= ScreenNotifications.new @driver
    screen_notifications
  end

  def screen_favorites
    screen_favorites ||= ScreenFavorites.new @driver
    screen_favorites
  end

  def screen_first_slideshow
    screen_first_slideshow ||= 'Atlasi svarīgāko!'
    screen_first_slideshow
  end

  def screen_second_slideshow
    screen_second_slideshow ||= 'Veic vajadzīgās izmaiņas!'
    screen_second_slideshow
  end

  def screen_third_slideshow
    screen_third_slideshow ||= 'Saņem paziņojumus!'
    screen_third_slideshow
  end

  def screen_enter_filter_data_not_empty
    screen_enter_filter_data_not_empty ||= 'Smith'
    screen_enter_filter_data_not_empty
  end

  def screen_enter_filter_data_empty
    screen_enter_filter_data_empty ||= ''
    screen_enter_filter_data_empty
  end
end
