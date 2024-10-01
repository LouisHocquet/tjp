class Category < ApplicationRecord
  has_and_belongs_to_many :registrations

  def label
    "#{name} (#{year_min}-#{year_max})"
  end
end
