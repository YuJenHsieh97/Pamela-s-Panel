class User < ApplicationRecord
  include Clearance::User

  has_many :cohorts
  has_many :courses
  has_many :students
  has_many :instructors
end
