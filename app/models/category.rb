class Category < ApplicationRecord
  has_many :deals
  belongs_to :user, class_name: 'User', foreign_key: :user_id

  validates :title, presence: true, length: { minimum: 1 }
  validates :icon, presence: true
end
