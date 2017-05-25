class HomePage < BasePage
    attr_accessor :button_start
  def initialize
  end

  def visible?
  end

  def load
    visit('/')
  end
end
