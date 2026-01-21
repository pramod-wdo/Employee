class EmploysController < ApplicationController
  before_action :set_employ, only: %i[ show edit update destroy ]

  # GET /employs or /employs.json
  def index
    @employs = Employ.all
  end

  # GET /employs/1 or /employs/1.json
  def show
  end

  # GET /employs/new
  def new
    @employ = Employ.new
  end

  # GET /employs/1/edit
  def edit
  end

  # POST /employs or /employs.json
  def create
    @employ = Employ.new(employ_params)

    respond_to do |format|
      if @employ.save
        format.html { redirect_to @employ, notice: "Employ was successfully created." }
        format.json { render :show, status: :created, location: @employ }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employs/1 or /employs/1.json
  def update
    respond_to do |format|
      if @employ.update(employ_params)
        format.html { redirect_to @employ, notice: "Employ was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @employ }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employs/1 or /employs/1.json
  def destroy
    @employ.destroy!

    respond_to do |format|
      format.html { redirect_to employs_path, notice: "Employ was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employ
      @employ = Employ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employ_params
      params.require(:employ).permit(:first_name, :middle_name, :last_name, :phone_number, :gender, :address, :refno)
    end
end
