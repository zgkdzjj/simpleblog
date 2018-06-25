class ArticlesController < ApplicationController
    def new
    end

    def create
        # render plain: params[:article].inspect 
        @article =  Article.new(params.require(:)[:article])

        @article.save
        redirect_to @article
    end
end
