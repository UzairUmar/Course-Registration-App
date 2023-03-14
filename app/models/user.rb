class User < ApplicationRecord
    has_many :user_courses
  has_many :courses, through: :user_courses

    # Validations
  validates_presence_of :first_name, :last_name
  
  # Scopes
  scope :alphabetical, -> { order('last_name, first_name') }
  
  # Methods
  def name
    "#{last_name}, #{first_name}"
  end
end
