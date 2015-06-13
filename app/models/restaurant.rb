class Restaurant < ActiveRecord::Base
  belongs_to :distrito
  belongs_to :user
  
end
