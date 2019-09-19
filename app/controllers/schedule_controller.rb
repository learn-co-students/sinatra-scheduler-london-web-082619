class ScheduleController < ApplicationController
  
    #index
    get '/schedule' do
        @schedule = Schedule.find_by(name: "Hermione")
        erb :"schedule/index"
    end
  
    #new
  
    #create
  
    #show
  
    #edit
  
    #update
  
    #delete
    
  
  end
  