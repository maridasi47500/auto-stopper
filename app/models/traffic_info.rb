class TrafficInfo < ApplicationRecord
  belongs_to :source, class_name: "IpAddress"
  belongs_to :destination, class_name: "IpAddress"
  before_validation :azerty
  attr_accessor :mydestination, :mysource
  def azerty
    self.source=IpAddress.find_or_initialize_by(name: self.mysource)
    self.destination=IpAddress.find_or_initialize_by(name: self.mydestination)
  end
end
