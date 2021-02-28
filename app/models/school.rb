class School < ApplicationRecord
  scope :filter_by_province, -> (province) { where province: province }
  scope :filter_by_name, -> (name) { where name: name }
  scope :filter_by_category, -> (category) { where category: category }
end
