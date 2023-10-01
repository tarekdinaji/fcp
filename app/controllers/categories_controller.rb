class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
  end

  def show 
    find_category
  end

  def new 
    @category = Category.new
    end 

  def create 
    @category = Category.new(params[:category][:name], params[:category][:category_id])

    if @category.save 
      redirect_to category_url 
    else 
      render :new 
    end 

  end 

  def edit
    find_category
  end 

  def update 
  end 

  def destroy 
    find_category
    @category.destroy
    redirect_to root_path, status: :see_other
  end 

  private 

  def find_category
    @category = Category.find(params[:id])
  end 

end
