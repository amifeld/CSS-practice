class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    @current_user = User.find_by({ "id" => session["user_id"] })
  end
end

# app/controllers/pages_controller.rb

class PagesController < ApplicationController
  def my_cats
    # Your controller logic, if needed
  end
end