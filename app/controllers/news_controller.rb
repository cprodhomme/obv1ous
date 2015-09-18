class NewsController < ApplicationController
    def index
        @news = News.order('id desc')
    end

    def show
        @new = News.find(params[:id])

        @comments = Comment.where(["new_id = :u", { u: @new.id }])

        @new_comment = Comment.new
    end
end
