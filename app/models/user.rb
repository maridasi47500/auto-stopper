class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :programminglanguage, optional: true
  belongs_to :distro,optional:true
  belongs_to :console,optional:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
