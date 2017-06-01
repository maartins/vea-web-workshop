require 'date'
module Users
  def Users.signup_user
    @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
    @signup_user
  end
  def Users.signup_user_no_again_password
    @signup_user_no_again_password ||= User.new(email: 'test@test.com', password: 'passworddemo', password_again: '')
    @signup_user_no_again_password
  end
  def Users.signup_user_no_passwords
    @signup_user_no_passwords ||= User.new(email: 'test@test.com', password: '', password_again: '')
    @signup_user_no_passwords
  end
  def Users.signup_user_no_email
    @signup_user_no_email ||= User.new(email: '', password: 'parole', password_again: 'parole')
    @signup_user_no_email
  end
  def Users.login_user
    @login_user ||= User.new(email: 'epasts@epasts.com', password: 'parole')
    @login_user
  end
  def Users.login_user_no_password
    @login_user_no_password ||= User.new(email: 'epasts@epasts.com', password: '')
    @login_user_no_password
  end
  def Users.login_user_no_email
    @login_user_no_email ||= User.new(email: '', password: 'parole')
    @login_user_no_email
  end
end

class User
  attr_reader :email, :password, :password_again, :project_name
  def initialize(email:, password:, password_again: nil, project_name: 'UIauto' + DateTime.now.strftime('%Q'))
    @email = email
    @password = password
    if password_again.nil?
      @password_again = @password
    else
      @password_again = password_again
    end
    @project_name = project_name
  end
end

