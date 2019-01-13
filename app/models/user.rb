class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :timeoutable
  belongs_to :expertise
  belongs_to :targetaudience
  has_many :newsitems
  has_many :usertrainings
  has_many :trainings, through: :usertrainings

  after_commit :newuser, on: :create

  def newuser
     user = User.last
     UserMailer.application(user).deliver_now
  end

  # def password_required?
  #  false
  # end
end
