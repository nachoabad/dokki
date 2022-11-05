class Template < ApplicationRecord
  belongs_to :org

  has_many :users
  has_many :record_types
end
