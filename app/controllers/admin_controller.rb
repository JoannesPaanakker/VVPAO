class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @newusers = User.where(member: false)
    @members = User.where(member: true).sort_by{ |user| user.last_name }
    @expertises = Expertise.all
    @expertise = Expertise.new
    @targetaudiences = Targetaudience.all
    @targetaudience = Targetaudience.new
  end

end
