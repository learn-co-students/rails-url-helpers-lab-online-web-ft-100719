class StudentsController < ApplicationController
 
  
  def index
    #binding.pry
    @students = Student.all
    
  end

  def show
    @student = Student.find(params[:id])
    #binding.pry
  end

  def activate
    # binding.pry
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end
end

  

    
