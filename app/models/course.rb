class Course < ActiveRecord::Base
  has_many :course_schedules
  has_many :schedules, through: :course_schedules

  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    Course.where("lower(name) = ?", slug.gsub("-", " ")).first
  end
end