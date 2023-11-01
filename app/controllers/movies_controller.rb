class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list" })
  end

  def show
    the_id = params.fetch("the_id")
    @movie = Movie.find(the_id)
    @director = Director.find(@movie.director_id)

    render({ :template => "movie_templates/details" })
  end
end
