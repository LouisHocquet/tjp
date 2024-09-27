class Registration < ApplicationRecord
  has_and_belongs_to_many :categories
  attr_accessor :year_min, :year_max, :name
  accepts_nested_attributes_for :categories
end
