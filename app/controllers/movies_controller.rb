class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the movie with the corresponding ID number
    # Store the movie in the @movie instance variable so the view can format it

    @movie = params[:id]

  end

  def director
    @director_name = Director.find_by({ :director_id => "director_id" }).name
    # @director_info = Director.find_by({ :name => "#{@director_id}" }).name

  end
end
