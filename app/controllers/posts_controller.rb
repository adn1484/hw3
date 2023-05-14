class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Place.find_by({"id" => params["id"]}) 
    end

  def new
    @posts = Post.new
    @posts["place_id"] = params["place_id"]
  end
  
  def create
    @posts = Post.new
    puts params ["post"]
    @posts["title"] = params["post"]["title"]
    @posts["description"] = params["post"]["description"]
    @posts["place_id"] = params["posts"]["place_id"]
    @posts.save
    redirect_to "/places/#{@posts["place_id"]}"
  end


end
