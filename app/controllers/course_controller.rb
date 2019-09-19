class CourseController < ApplicationController
  
    #index
    get '/courses/?' do
        @courses = Course.all
      erb :"courses/index"
    end
  
    #new
    get "/courses/new" do
        @course = Course.new
        erb :"courses/new"
    end
  
    #create
    post "/courses/?" do
        @course = Course.create(params)
        redirect "/courses/#{@course.id}"
    end

  
    #show
    get "/courses/:id" do
        @course = Course.find(params[:id])
        erb :"courses/show"
    end
  
    #edit
    get "/courses/:id/edit" do 
        @course = Course.find(params[:id])
        erb :"courses/edit"
    end
  
    #update
    patch "/courses/:id" do
        @course = Course.find(params[:id])
        @course.name = params["course"]["name"]
        @course.professor = params["course"]["professor"]
        @course.credits = params["course"]["credits"]
        @course.save

        redirect "/courses/#{@course.id}" 
    end
  
    #delete
    
  
  end
  