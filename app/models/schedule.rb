class Schedule < ActiveRecord::Base
  has_many :course_schedules
  has_many :courses, through: :course_schedules

  def total_credits
    self.courses.reduce(0) { |memo, course| memo + course.credits }
  end
end