class Proyect < ActiveRecord::Base
  belongs_to :user
  has_many :task
   def to_s
       "#{self.name}"
     end
  
end
