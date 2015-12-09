class User < ActiveRecord::Base
  has_many :posts
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

         after_create :set_default_role

  private
  def set_default_role
    self.add_role :blogger
  end

end
