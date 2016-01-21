class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :proyect

  enum state: [:to_do, :doing, :done]

def to_s
       "#{self.name}"
end
  	
end
