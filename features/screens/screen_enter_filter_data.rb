class ScreenEnterFilterData
  def initialize(driver)
    @driver = driver
    @filter_save_button = Element.new(:id, 'save_filter', @driver)
    @filter_enter_data_field = Element.new(:id, 'param_filter_name', @driver)
  end

  def visible?
    @filter_save_button.visible?
  end

  def filter_click_save
    @filter_save_button.click
  end

  def filter_enter_data(data)
    @filter_enter_data_field.send_keys data
  end
end