class MyswitchTable < ApplicationRecord
  belongs_to :mac
  belongs_to :switch
  attr_accessor :mymac
  before_validation :azerty
  def azerty
    self.mac=Mac.find_or_initialize_by(name: self.mymac)
  end
end
