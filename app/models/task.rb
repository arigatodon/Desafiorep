class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :proyect

def to_s
       "#{self.name}"
     end
  	
end
