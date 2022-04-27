class Course1sController < ApplicationController
  before_action :set_course1, only: %i[ show edit update destroy ]

  # GET /course1s or /course1s.json
  def index
    @course1s = Course1.order(:title).page(params[:page])
  end

  # GET /course1s/1 or /course1s/1.json
  def show
  end

  # GET /course1s/new
  def new
    @course1 = Course1.new
  end

  # GET /course1s/1/edit
  def edit
  end

  # POST /course1s or /course1s.json
  def create
    @course1 = Course1.new(course1_params)
    @course1.user = current_user
    respond_to do |format|
      if @course1.save
        format.html { redirect_to course1s_url(@course1), notice: "Course1 was successfully created." }
        format.json { render :show, status: :created, location: @course1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course1s/1 or /course1s/1.json
  def update
    respond_to do |format|
      if @course1.update(course1_params)
        format.html { redirect_to course1_url(@course1), notice: "Course1 was successfully updated." }
        format.json { render :show, status: :ok, location: @course1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course1s/1 or /course1s/1.json
  def destroy
    @course1.destroy

    respond_to do |format|
      format.html { redirect_to course1s_url, notice: "Course1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_course1
    @course1 = Course1.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def course1_params
    params.require(:course1).permit(:title, :description)
  end
end
