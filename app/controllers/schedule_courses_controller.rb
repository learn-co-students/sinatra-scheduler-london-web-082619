class ScheduleController < ApplicationController
  
    #index
    get '/schedule_courses' do
        @schedule_courses = ScheduleCourse.all
    end
  
    #new
    get "/schedule_courses/new" do
        
    end

  
    #create
    post "/schedule_courses" do
        @schedule_course = ScheduleCourse.create(params)
    end

    #show
  
    #edit
  
    #update
  
    #delete
    
  
  end
  