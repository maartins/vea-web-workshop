class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_signup_page
    @pages.page_home.load
    @pages.page_home.visible?
    @pages.page_home.open_signup
  end

  def enter_signup_details(user)
    @pages.page_home.signup_input_email user.email
    @pages.page_home.signup_input_password1 user.password
    @pages.page_home.signup_input_password2 user.password_again
    @pages.page_home.signup_input_project user.project_name
  end

  def submit_signup_details 
    enter_signup_details Users.signup_user
    @pages.page_home.close_signup
  end

  def submit_signup_details_no_again_password
    enter_signup_details Users.signup_user_no_again_password
    @pages.page_home.close_signup
  end

  def submit_signup_details_no_passwords
    enter_signup_details Users.signup_user_no_passwords
    @pages.page_home.close_signup
  end

  def submit_signup_details_no_email
    enter_signup_details Users.signup_user_no_email
    @pages.page_home.close_signup
  end
end
