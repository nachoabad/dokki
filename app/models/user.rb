class User < ApplicationRecord
  belongs_to :template

  has_many :records, dependent: :destroy
  accepts_nested_attributes_for :records

  before_create :set_defaults
  after_create :create_records

  def to_param
    slug
  end

  private

    def set_defaults
      self.slug = SecureRandom.urlsafe_base64(6)
    end

    def create_records
      template.record_types.each do |record_type|
        records.create! record_type:
      end
    end
end
