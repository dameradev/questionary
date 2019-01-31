class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :answers
  accepts_nested_attributes_for :answers,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  acts_as_voter
end
