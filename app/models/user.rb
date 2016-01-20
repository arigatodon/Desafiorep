class User < ActiveRecord::Base

  has_many :proyect
  has_many :task

   def to_s
       "#{self.email}"
     end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
