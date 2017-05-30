class ScreenBase
  def initialize(driver)
    @driver = driver
  end

  def swipe_left
    @driver.swipe(:start_x => 0.95, :delta_x => -0.9, duration:500)
  end

  def swipe_right
    @driver.swipe(:start_x => 0.05, :delta_x => 0.95, duration:500)
  end
end
