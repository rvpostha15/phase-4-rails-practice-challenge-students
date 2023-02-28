class Student < ApplicationRecord
  belongs_to :instructor

  validates :name, presence: true, uniqueness: true
  validates :major, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
  validates :instructor_id, presence: true
end
