class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This website is used to keep track of all jobs you apply to and their current status (ghosted, pending, interview, rejected, accepted)"
  end
end
