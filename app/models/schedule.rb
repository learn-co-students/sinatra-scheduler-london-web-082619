class Schedule < ActiveRecord::Base
    has_many :schedule_courses
    has_many :courses, through: :schedule_courses
end