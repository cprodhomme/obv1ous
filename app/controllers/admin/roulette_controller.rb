class Admin::RouletteController < Admin::DashboardController

  	def index
		@roulettes = Roulette.order('id desc')
	end

	def new
		@roulette = Roulette.new
	end

	def create
	    @roulette = Roulette.new(roulette_params)

		if @roulette.save
			redirect_to edit_admin_roulette_path(@roulette.id), notice: 'Votre roulette a bien été creer'
		else
			render 'new'
		end
	end

	def edit
		@roulette = Roulette.find(params[:id])
	end

	def update
		@roulette = Roulette.find(params[:id])

	    if @roulette.update_attributes(roulette_params)
	      # Handle a successful update.
	      redirect_to edit_admin_roulette_path(@roulette.id), notice: 'Votre roulette a bien été modifier'
	    else
	      render 'edit'
	    end
	end

	def destroy
		Roulette.destroy(params[:id])
		redirect_to admin_roulette_index_path, notice: 'Votre roulette a bien ete supprimer'
	end

	private

    def roulette_params
    	params.require(:roulette).permit(:team, :name, :strat)
    end
end
