class AdminController < ApplicationController
  before_action :authenticate_user!
  def dashboard
    @newusers = User.where(member: false)
    @members = User.where(member: true)
  end
end
