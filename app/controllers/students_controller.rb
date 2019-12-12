class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active== false
      @status= 'inactive'
    elsif @student.active == true
      @status= 'active'
    end 
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
