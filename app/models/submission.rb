class Submission < ApplicationRecord
  after_create :create_fields

  belongs_to :user
  belongs_to :template

  has_many :fields
  
  def field_types
    template.field_types
  end

  private

  def create_fields
    field_types.each do |field_type|
      fields.create! field_type: field_type
    end
  end
end
