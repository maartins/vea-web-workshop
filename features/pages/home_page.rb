class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @video_frame = Element.new(:xpath, '//div[@id = "video"]')
    @try_now_button = Element.new(:xpath, '//button[@id = "start_button"]')
    
    @signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]')
    @signup_password1 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @signup_password2 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @signup_project = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @signup_close_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')

    @open_login_form_button = Element.new(:xpath, '//button[@id = "login-b"]')
    @login_email = Element.new(:xpath, '//form[@action = "/login"]/descendant::input[@type = "email"]')
    @login_password = Element.new(:xpath, '//form[@action = "/login"]/descendant::input[@type = "password"]')
    @login_button = Element.new(:xpath, '//form[@action = "/login"]/descendant::button')
  end

  def visible?
    @video_frame.visible?
    @try_now_button.visible?
  end

  def open_signup
     @try_now_button.click
  end

  def signup_input_email(email)
    @signup_email.send_keys email
  end

  def signup_input_password1(password1)
    @signup_password1.send_keys password1
  end

  def signup_input_password2(password2)
    @signup_password2.send_keys password2
  end

  def signup_input_passwords(password)
    signup_input_password1 password
    signup_input_password2 password
  end

  def signup_input_project(project)
    @signup_project.send_keys project
  end

  def close_signup
    @signup_close_button.click
  end

  def open_login
     @open_login_form_button.click
  end

  def login_input_email(email)
    @login_email.send_keys email
  end

  def login_input_password(password)
    @login_password.send_keys password
  end

  def login_click
    @login_button.click
  end

  def load
    visit('/')
  end
end
