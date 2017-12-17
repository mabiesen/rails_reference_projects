class PageFilesController < ApplicationController
  before_action :set_page_file, only: [:show, :edit, :update, :destroy]

  # GET /page_files
  # GET /page_files.json
  def index
    @page_files = PageFile.all
  end

  # GET /page_files/1
  # GET /page_files/1.json
  def show
  end

  # GET /page_files/new
  def new
    @page_file = PageFile.new
  end

  # GET /page_files/1/edit
  def edit
  end

  # POST /page_files
  # POST /page_files.json
  def create
    @page_file = PageFile.new(page_file_params)

    respond_to do |format|
      if @page_file.save
        format.html { redirect_to @page_file, notice: 'Page file was successfully created.' }
        format.json { render :show, status: :created, location: @page_file }
      else
        format.html { render :new }
        format.json { render json: @page_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_files/1
  # PATCH/PUT /page_files/1.json
  def update
    respond_to do |format|
      if @page_file.update(page_file_params)
        format.html { redirect_to @page_file, notice: 'Page file was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_file }
      else
        format.html { render :edit }
        format.json { render json: @page_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_files/1
  # DELETE /page_files/1.json
  def destroy
    @page_file.destroy
    respond_to do |format|
      format.html { redirect_to page_files_url, notice: 'Page file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_file
      @page_file = PageFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_file_params
      params.require(:page_file).permit(:type, :name, :link)
    end
end
