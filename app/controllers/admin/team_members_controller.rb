class Admin::TeamMembersController < Admin::DashboardController

	def index
		@members = TeamMember.order('id desc')
	end

	def new
		@member = TeamMember.new
	end

	def create
	    @member = TeamMember.new(member_params)

		if @member.save
			redirect_to edit_admin_team_member_path(@member.id), notice: 'Le membre a bien été creer'
		else
			render 'new'
		end
	end

	def edit
		@member = TeamMember.find(params[:id])
	end

	def update
		@member = TeamMember.find(params[:id])

	    if @member.update_attributes(member_params)
	      # Handle a successful update.
	      redirect_to edit_admin_team_member_path(@member.id), notice: 'Le membre a bien été modifier'
	    else
	      render 'edit'
	    end
	end

	def destroy
		TeamMember.destroy(params[:id])
		redirect_to admin_team_members_path, notice: 'Le membre a bien ete supprimer'
	end

	private

    def member_params
      params.require(:team_member).permit(:name, :id_steam, :color, :avatar, :avatar_color, :description, :rank_cs, :rank_lol, :role_cs, :role_lol)
    end
end
