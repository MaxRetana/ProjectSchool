class User < ApplicationRecord
  has_many :clubs
  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :nacount, presence: true
  #validates :role, presence: true

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(email) = :value OR nacount = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end

end
