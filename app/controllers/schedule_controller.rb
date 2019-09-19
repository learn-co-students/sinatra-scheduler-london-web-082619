class ScheduleController < ApplicationController

  get "/schedule" do
    @schedule = Schedule.find_by(student: "Hermione")
    @courses = @schedule.courses

    erb :"/schedule/index"
  end

  patch "/schedule/:slug" do
    course = Course.find_by_slug(params[:slug])
    schedule = Schedule.find_by(student: "Hermione")

    if schedule.courses.include?(course)
      schedule.courses.delete(course)
    else
      schedule.courses << course
    end

    redirect "/schedule"
  end
end