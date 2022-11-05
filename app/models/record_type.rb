class RecordType < ApplicationRecord
  belongs_to :template

  enum input_type: [ :text_field, :file_field ]
end
