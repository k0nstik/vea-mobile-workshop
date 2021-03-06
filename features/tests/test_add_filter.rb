require_relative '../config/filters'
class TestAddFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
    @filter_data = Filter.new('property_positive', 'filters_vakances')
  end

  def close_intro
    @screens.screen_intro.visible?
    @screens.screen_intro.close_intro
  end

  def select_category
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_category(@filter_data.category)
    @screens.screen_select_sub_category.visible?(@filter_data.category)
  end

   def select_sub_category(sub_cat_hash)
    @screens.screen_select_sub_category.visible?(sub_cat_hash['title'])
    @screens.screen_select_sub_category.select_sub_category(
      sub_cat_hash['option']
    )
   end

  def open_filter_parameter_screen
    select_category
    @filter_data.sub_categories.each do |sub_category|
      select_sub_category(sub_category)
    end
  end

  def enter_data_to_filter_vakances
    text = @screens.screen_enter_filter_data_not_empty
    @screens.screen_enter_filter_data.filter_enter_data(text)
  end

  def enter_no_data_to_filter_vakances
    text = @screens.screen_enter_filter_data_empty
    @screens.screen_enter_filter_data.filter_enter_data(text)
  end
end
