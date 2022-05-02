class Lesson1sController < ApplicationController
  before_action :set_lesson1, only: %i[ show edit update destroy ]

  # GET /lesson1s or /lesson1s.json
  def index
    @lesson1s = Lesson1.all
  end

  # GET /lesson1s/1 or /lesson1s/1.json
  def show
  end

  # GET /lesson1s/new
  def new
    @lesson1 = Lesson1.new
  end

  # GET /lesson1s/1/edit
  def edit
    authorize @lesson1
  end

  # POST /lesson1s or /lesson1s.json
  def create
    @lesson1 = Lesson1.new(lesson1_params)
    respond_to do |format|
      if @lesson1.save
        format.html { redirect_to lesson1_url(@lesson1), notice: "Lesson1 was successfully created." }
        format.json { render :show, status: :created, location: @lesson1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lesson1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson1s/1 or /lesson1s/1.json
  def update
    respond_to do |format|
      if @lesson1.update(lesson1_params)
        format.html { redirect_to lesson1_url(@lesson1), notice: "Lesson1 was successfully updated." }
        format.json { render :show, status: :ok, location: @lesson1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lesson1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson1s/1 or /lesson1s/1.json
  def destroy
    authorize @lesson1
    # @lesson1 = Lesson1.find_by(title: params[:id])

    @lesson1.destroy

    respond_to do |format|
      format.html { redirect_to lesson1s_url, notice: "Lesson1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson1
    @course1 = Course1.find(params[:course_id])
    @lesson1 = Lesson1.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def lesson1_params
    params.require(:lesson1).permit(:title, :content, :course1_id)
  end
end
