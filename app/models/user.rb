class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def myfirstname
    x=firstname
    if distro || console || programminglanguage
      x+="("
      x+= [distro.try(:name),programminglanguage.try(:name),console.try(:name)].select{|h|h}.join("-")
      x+=")"
    end
    x

  end
  belongs_to :programminglanguage, optional: true
  belongs_to :distro,optional:true
  belongs_to :console,optional:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
