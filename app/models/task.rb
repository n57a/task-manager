class Task < ApplicationRecord
  validates :title, presence: true  # Ensures title is required
  attribute :completed, :boolean, default: false  # Sets default value for 'completed'
end