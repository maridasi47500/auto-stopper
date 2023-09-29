class Prom < ApplicationRecord
  def self.myprom
    limit(4)
  end
end
