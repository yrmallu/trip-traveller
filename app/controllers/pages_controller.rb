class PagesController < ApplicationController
  before_filter :authorize
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to pages_path, notice: 'Page was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :description)
    end
end
