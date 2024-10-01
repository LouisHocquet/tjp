class Registration < ApplicationRecord
  has_and_belongs_to_many :categories
  attr_accessor :year_min, :year_max, :name
  accepts_nested_attributes_for :categories

  validates :category_ids, :presence => { message: :one_category_min }

  validates :firstname, :presence => { message: :no_blank }
  validates :lastname, :presence => { message: :no_blank }
  validates :club_name, :presence => { message: :no_blank }
  validates :country, :presence => { message: :no_blank }
  validates :email,
  :presence => { message: :no_blank },
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => :invalid_email
    }
  validates :phone,
  :presence => { message: :no_blank },
    :format => {
      :with => /\A[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}\z/i,
      :message => :invalid_phone
    }
end
