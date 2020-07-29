class Contact < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :phone, presence: true, length: {maximum: 24}
  validates :description, presence: true, length: {minimum: 10}
  validates :status, presence: true
  validates :picture, presence: true
  
  belongs_to :user
end
