class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :create, :update, :destroy]

  # GET /urls
  def index
    @urls = Url.all
    render json: @urls
  end

  # GET /urls/1
  def show
    render json: @url
  end

  # POST /urls
  def create
    @url = Url.new(url_params)

    if @url.save
      render json: @url, status: :created, location: @url
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /urls/1
  def update
    if @url.update(url_params)
      render json: @url
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  # DELETE /urls/1
  def destroy
    #@url = Url.destroy

    @urls = Url.find(params[:id])
				@urls.destroy
				render json: {},status: :ok #status: 'SUCCESS', message:'Deleted article', data:@urls
			
    #render json: @url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @urls = Url.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def url_params
      params.permit(:id,:hits, :url, :shorturl) #require(:url)
    end
end
