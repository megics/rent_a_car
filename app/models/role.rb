class Role < ApplicationRecord
  validates :roleName, presence: true
  has_many :users
end
