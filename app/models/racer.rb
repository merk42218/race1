class Racer < ActiveRecord::Base
  has_many :teams1, class_name: 'Team', foreign_key: 'racer1_id'
  has_many :teams2, class_name: 'Team', foreign_key: 'racer2_id'

  validates :surname, :firstname, :bday, :country, :number_of_wins, presence: true

end
