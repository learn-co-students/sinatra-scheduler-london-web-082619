class Course < ActiveRecord::Base
    has_many :schedule_courses
    has_many :schedules, through: :schedule_courses
end