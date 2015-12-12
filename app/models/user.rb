class User < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" } , default_url: "default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
        # before_create :set_def_avatar
         after_create :set_default_role

  def set_default_role
    self.add_role :blogger
  end

end
