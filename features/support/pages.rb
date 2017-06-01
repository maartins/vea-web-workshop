class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def login_landing_page
    @login_landing_page ||= LoginLandingPage.new
    @login_landing_page
  end
end