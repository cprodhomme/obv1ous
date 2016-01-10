class Admin::UsersController < Admin::DashboardController

    def index
		@users = User.order('id desc')
	end

	def new
		@user = User.new
	end

	def create
	    @user = User.new(new_params)

		if @user.save
			redirect_to edit_admin_article_path(@user.id), notice: 'Votre article a bien été créé'
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

	    if @user.update_attributes(new_params)
	      # Handle a successful update.
	      redirect_to edit_admin_article_path(@user.id), notice: 'Utilisateur a bien été modifié'
	    else
	      render 'edit'
	    end
	end

	def destroy
		User.destroy(params[:id])
		redirect_to admin_articles_path, notice: 'Utilisateur a bien été supprimé'
	end

	private

    def user_params
      params.require(:users).permit(:title, :summary, :content, :image)
    end
end
