class House < ActiveRecord::Base
  validates :address, presence: true
  validates :person, presence: true

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end
