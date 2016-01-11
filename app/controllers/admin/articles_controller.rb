class Admin::ArticlesController < Admin::DashboardController

	def index
		@news = News.order('id desc')
	end

	def new
		@new = News.new
	end

	def create
	    @new = News.new(new_params)

		if @new.save
			redirect_to edit_admin_article_path(@new.id), notice: 'Votre article a bien été créé'
		else
			render 'new'
		end
	end

	def edit
		@new = News.find(params[:id])
	end

	def update
		@new = News.find(params[:id])

	    if @new.update_attributes(new_params)
	      # Handle a successful update.
	      redirect_to edit_admin_article_path(@new.id), notice: 'Votre article a bien été modifié'
	    else
	      render 'edit'
	    end
	end

	def destroy
		News.destroy(params[:id])
		redirect_to admin_articles_path, notice: 'Votre article a bien été supprimé'
	end

	private

    def new_params
      params.require(:news).permit(:title, :summary, :content, :image)
    end
end
