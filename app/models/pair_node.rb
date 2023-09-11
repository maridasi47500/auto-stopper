class PairNode < ApplicationRecord
  belongs_to :mac1, class_name: "Mac"
  belongs_to :mac2, class_name: "Mac"
  attr_accessor :mymac1, :mymac2
  before_validation :azer
  def azer
    self.mac1=Mac.find_or_initialize_by(name:self.mymac1)
    self.mac2=Mac.find_or_initialize_by(name:self.mymac2)
  end
end
