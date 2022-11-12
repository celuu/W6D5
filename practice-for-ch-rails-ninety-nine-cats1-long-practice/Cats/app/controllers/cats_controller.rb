class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        cat = Cat.find(params[:id])
        render json: cat
    end

    def create
        cat = Cat.new(cat_params)
        if cat.save!
            render json: cat
        else
            render json: cat.errors.full_messages, status: 422
        end
    end

    def update
        cat = Cat.find_by(id:(params[:id]))
        if cat.update(cat_params)
            render json: cat
        else
            render json: cat.errors.full_messages, status: 422
        end
    end

    def new
        @cat = Cat.new
        render :new
    end

    private
    def cat_params
        params.require(:cat).permit(:name, :birth_date, :description, :color, :sex)
    end

end