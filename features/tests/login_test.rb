class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_login_page
    @pages.page_home.load
    @pages.page_home.visible?
    @pages.page_home.open_login
  end

  def enter_login_details(user)
    @pages.page_home.login_input_email user.email
    @pages.page_home.login_input_password user.password
  end

  def submit_login_details 
    enter_login_details Users.login_user
    @pages.page_home.login_click
    @pages.login_landing_page.visible?
  end

  def submit_login_details_no_password
    enter_login_details Users.login_user_no_password
    @pages.page_home.login_click
  end

  def submit_login_details_no_email
    enter_login_details Users.login_user_no_email
    @pages.page_home.login_click
  end
end
