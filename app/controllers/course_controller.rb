class CourseController < ApplicationController

  get "/courses" do
    @courses = Course.all
    erb :"/courses/index"
  end

  get "/courses/:slug" do
    @course = Course.find_by_slug(params[:slug])
    @schedule = Schedule.find_by(student: "Hermione")
    erb :"/courses/show"
  end

  patch "/courses/:slug" do
    binding.pry
    course = Course.find_by_slug(params[:slug])
    course.update(params[:course])

    redirect "/courses/#{course.slug}"
  end

  get "/courses/:slug/edit" do
    @course = Course.find_by_slug(params[:slug])
    erb :"/courses/edit"
  end
end