# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_Author!
  def require_author
    if !Author_signed_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end
end
