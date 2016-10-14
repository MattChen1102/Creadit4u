class Admin::IndexController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!

  def index
  end

  private

  def authenticate_admin!
    redirect_to root_path, notice: '你不是此網站造物主，滾' unless current_user.admin?
  end
end