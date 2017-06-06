class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @students = current_user.students
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = current_user.students.build
  end

  def create
    @student = current_user.students.build(student_params)

    if @student.save
      redirect_to @student, notice: "student successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "student successfully updated"
    else
      render :edit
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    # students.find(params[:id])
    # @student = current_user.students

    def student_params
      params.require(:student).permit(:name, :bio, :image_url)
    end
end
