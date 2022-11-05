class Org < ApplicationRecord
  has_many :admins
  has_many :templates
end
