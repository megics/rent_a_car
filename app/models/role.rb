class Role < ApplicationRecord
  validates :roleName, presence: true
end
