class Building < ApplicationRecord
  has_many :offices
  has_many :companies, through: :offices

  def number_of_floors_available
    # Will not work until relationships and schema are corretly setup

    all_floors = Array(1..self.number_of_floors)
    self.offices.each do |office|
      all_floors.delete(office.floor)
    end
    all_floors
  end

  def total_offices
    self.offices.count
  end
  
  def total_rent
    total_offices * self.rent_per_floor
  end

  def empty_offices
    number_of_floors_available.map { |f| offices.build(floor: f) }
  end

end
