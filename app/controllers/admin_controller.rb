class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @all_users = User.all
    @newusers = []
    @administrators = []
    @all_users.each do |au|
      if au.member && au.admin
        @administrators << au
      end
      if !au.member && !au.admin
        @newusers << au
      end
    end
    @members = User.where(member: true).sort_by{ |user| user.last_name }
    @expertises = Expertise.all.drop(1).sort_by{ |exp| exp.name.downcase }
    @expertise = Expertise.new
    @targetaudiences = Targetaudience.all.sort_by{ |aud| aud.name.downcase }
    @targetaudience = Targetaudience.new
  end

end
