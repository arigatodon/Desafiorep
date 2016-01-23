class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :proyect

  enum state: [:pendiente, :realizando, :terminada]

def to_s
       "#{self.name}"
end
  	
end
