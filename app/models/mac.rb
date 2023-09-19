class Mac < ApplicationRecord
  belongs_to :person, optional: true
  accepts_nested_attributes_for :person, allow_destroy: true
  belongs_to :device, optional: true
  accepts_nested_attributes_for :device, allow_destroy: true
end
