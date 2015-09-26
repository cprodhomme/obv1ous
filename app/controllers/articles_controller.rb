class ArticlesController < ApplicationController

	def index
    	@news = News.order('id desc')
    end

    def show
    	@new = News.find(params[:id])
    end
end
