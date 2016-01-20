class Proyect < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
   
   def to_s
       "#{self.name}"
     end
  
end
