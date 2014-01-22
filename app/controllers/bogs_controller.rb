class BogsController < ApplicationController

	def index
		render :index
	end

	def new
		render :new
	end

	def list
		@creature = Creature.all
		render :list
	end

	def onecreature
		render :onecreature
	end


	def create
		creature = params[:creature].permit(:name, :description)
		new_creature = Creature.create(creature)
		redirect_to "/bogs/#{new_creature.id}"
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
	end

	def edit
		id = params[:id]
		@creature = Creature.find(id)
		render :edit
	end

	def update
		id = params[:id]
		@creature = Creature.find(id)
		updated_info = params.require(:creature),permit(:name, :description)
		creature.update_attributes(updated_info)
		redirect_to "bogs/#{creature.id}"
	end

	def prompt
		id = params[:id]
		@creature = Creature.find(id)
		render :prompt
	end

	def delete
		id = params[:id]
		creature = Creature.find(id)
		creature.destroy
		redirect_to "/bogs/list"
	end
end	
