class CoursesController < ApplicationController

    # show, edit, update and destroy all need a common @book object to work with, so find it first...
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # instead of all books, we are only getting a list of published books
  def index
    @courses = Course.alphabetical
  end
   

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: "#{@course.name} was added to the system."
    else
      render action: 'new'
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "#{@course.name} was revised in the system."
    else
      render action: 'edit'
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from users (potential hackers), but rather only allow the white list through.
    def course_params
      params.require(:course).permit(:code, :name, :user_ids => [])
    end


end
