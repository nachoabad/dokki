class Record < ApplicationRecord
  belongs_to :user
  belongs_to :record_type

  delegate :name, :input_type, to: :record_type

  has_one_attached :file
end
