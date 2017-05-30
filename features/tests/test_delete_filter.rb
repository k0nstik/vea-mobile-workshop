class TestDeleteFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def open_existing_filter
    filter = @screens.screen_enter_filter_data_not_empty
    @screens.screen_saved_filter_data.select_saved_filter_element(filter)
  end

  def delete_saved_filter
    @screens.screen_saved_filter_data.delete_saved_filter_data
  end
end
