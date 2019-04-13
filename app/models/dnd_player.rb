class DndPlayer < ApplicationRecord

	validates :name, presence: true
  validates :age, presence: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :experience, presence: true
  validates :description, presence: true
  validates :weight, presence: true
  validates :height, presence: true
end
