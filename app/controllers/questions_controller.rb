class QuestionsController < ApplicationController
  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
    end
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.

    @year_of_oldest_movie = Movie.order.last
  end

  def question_3
    # How many movies does the director of the first movie have on the list?

    # Your Ruby goes here.

    # @number_of_movies_directed_by_first_movie_director = ???
  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    # @most_number_of_movies_by_a_single_director = ???
  end

  def question_5
    # What is the most recent movie on the list that the first actor appeared in?

    actor_roles = []
    actor_movies = []

    r = Role.where({ :actor_id => Actor.first.id }).select("movie_id")
    actor_roles << r

    actor_roles.each do |r|
      m = Movie.where({ :id => r }).order("year DESC")
      actor_movies << m
    end

    @most_recent_movie_for_first_actor = actor_movies

  end
    # What is the most recent movie on the list that the first actor appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    # @most_recent_movie_for_first_actor = ???

