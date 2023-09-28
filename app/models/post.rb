class Post < ApplicationRecord
  belongs_to :city
  def self.myposts
    order(date: :desc)
  end
end
