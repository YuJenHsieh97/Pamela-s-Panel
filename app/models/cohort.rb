class Cohort < ApplicationRecord
    has_and_belongs_to_many :Students
    has_and_belongs_to_many :Courses
    has_and_belongs_to_many :Instructors
end
