class WeblogsController < ApplicationController
  before_action :set_weblog, only: %i[ show edit update destroy ]

  # GET /weblogs or /weblogs.json
  def index
    @weblogs = Weblog.all
  end

  # GET /weblogs/1 or /weblogs/1.json
  def show
  end

  # GET /weblogs/new
  def new
    @weblog = Weblog.new
  end

  # GET /weblogs/1/edit
  def edit
  end

  # POST /weblogs or /weblogs.json
  def create
    @weblog = Weblog.new(weblog_params)

    respond_to do |format|
      if @weblog.save
        format.html { redirect_to @weblog, notice: "Weblog was successfully created." }
        format.json { render :show, status: :created, location: @weblog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weblogs/1 or /weblogs/1.json
  def update
    respond_to do |format|
      if @weblog.update(weblog_params)
        format.html { redirect_to @weblog, notice: "Weblog was successfully updated." }
        format.json { render :show, status: :ok, location: @weblog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weblogs/1 or /weblogs/1.json
  def destroy
    @weblog.destroy
    respond_to do |format|
      format.html { redirect_to weblogs_url, notice: "Weblog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weblog
      @weblog = Weblog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weblog_params
      params.require(:weblog).permit(:title, :content)
    end
end
