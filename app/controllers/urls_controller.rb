class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :create, :update, :destroy]

  # GET /urls
  def index
    @urls = Url.all
    render json: @urls
  end

  # GET /urls/1
  def show
    render json: @urls, status: :moved_permanently
  end

  # POST /urls
  def create
    @urls = Url.new(url_params)

    if @urls.save
      render json: @urls, status: :created, location: @urls
    else
      render json: @urls.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /urls/1
  def update
    if @url.update(url_params[:url])
      render json: @url
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  # DELETE /urls/1
  def destroy
    @urls = Url.find(params[:id])
    @urls.destroy
    render json: {},status: :ok 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @urls = Url.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def url_params
      params.permit(:id, :hits, :url, :shorturl, :user_id) #require(:url)
    end
end
