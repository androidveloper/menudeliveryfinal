class Lunch < ActiveRecord::Base
  belongs_to :tipoplato
  belongs_to :tipomenu
  belongs_to :restaurant
end
