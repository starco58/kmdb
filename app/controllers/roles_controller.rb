class RolesController < ApplicationController
  def index
    @list_of_roles = Role.all

    # @actor_id = Role.actor_id
    @actor_info = Role.find_by({ :actor_id => "actor_id"})
    @actor_id = Actor.find_by({ :name => "#{@actor_info}"})
    @actor_name = Actor.name["#{@actor_id}"][0]

  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the role with the corresponding ID number
    # Store the role in the @role instance variable so the view can format it

    @role = params[:id]

  end

  # def actor
  #   @actor_id = Roles.find_by({ :actor_id => "actor_id"})
  #   @actor_name = Actors.find_by({ :name => "#{@actor_id}"}).first


  # end

end


