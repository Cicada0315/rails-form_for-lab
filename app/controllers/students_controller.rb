class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]
    def index
        @studnets=Student.all
    end

    def show
    end

    def new
        @student=Student.new
    end

    def create
        @student=Student.create(students_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(students_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private
    def set_student
        @student=Student.find(params[:id])
    end
    def students_params(*args)
        params.require(:student).permit(*args)
    end 
end
