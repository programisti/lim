class V1::PageContentsController < ApplicationController
  # GET /page_contents
  # GET /page_contents.json
  def index
    @page_contents = PageContent.all
  end

  # GET /page_contents/new
  def new
    @page_content = PageContent.new
  end

  # POST /page_contents
  # POST /page_contents.json
  def create
    @page_content = PageContent.new(page_content_params)
    @page_content.parse_url(page_content_params[:source])

    respond_to do |format|
      if @page_content.save
        format.html { redirect_to action: :index }
        format.json { render json: @page_content, status: :created, location: @page_content }
      else
        format.html { render :new }
        format.json { render json: @page_content.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def page_content_params
      params.require(:page_content).permit(:source)
    end
end
