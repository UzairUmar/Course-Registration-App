class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, through: :user_courses


  scope :alphabetical, -> { order('name') }

  
end
