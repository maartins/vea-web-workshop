class LoginLandingPage < BasePage
    attr_accessor :button_start
  def initialize
    @user_email = Element.new(:xpath, '//div[@id = "userEmail"]')
  end

  def visible?
    @user_email.visible?
  end
end
