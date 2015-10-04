class Admin::UsersController < Admin::DashboardController

    def index
		@users = Users.order('id desc')
	end

	def new
		@user = Users.new
	end

	def create
	    @user = Users.new(new_params)

		if @user.save
			redirect_to edit_admin_article_path(@user.id), notice: 'Votre article a bien été creer'
		else
			render 'new'
		end
	end

	def edit
		@user = Users.find(params[:id])
	end

	def update
		@user = Users.find(params[:id])

	    if @user.update_attributes(new_params)
	      # Handle a successful update.
	      redirect_to edit_admin_article_path(@user.id), notice: 'Utilisateur a bien été modifier'
	    else
	      render 'edit'
	    end
	end

	def destroy
		News.destroy(params[:id])
		redirect_to admin_articles_path, notice: 'Utilisateur a bien ete supprimer'
	end

	private

    def new_params
      params.require(:news).permit(:title, :summary, :content, :image)
    end
end
