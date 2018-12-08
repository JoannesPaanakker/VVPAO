class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @newusers = User.where(member: false)
    @members = User.where(member: true).sort_by{ |user| user.last_name }
    @expertises = Expertise.all.drop(1).sort_by{ |exp| exp.name.downcase }
    @expertise = Expertise.new
    @targetaudiences = Targetaudience.all.sort_by{ |aud| aud.name.downcase }
    @targetaudience = Targetaudience.new
  end

end
