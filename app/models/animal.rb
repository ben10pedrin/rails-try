class Animal < ApplicationRecord
  has_one :rescue, dependent: :destroy
  
  def self.types
      ['Dog', 'Cat', 'Other']
  end
  
  def self.sexes
      ['Male', 'Female']
  end
  
  def self.statuses
      ['Active', 'Adopted', 'Dead']
  end
end
