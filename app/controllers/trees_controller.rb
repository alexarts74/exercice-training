class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to tree_path(@tree)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    if @tree.update(tree_params)
      redirect_to tree_path(@tree)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tree = Tree.find(params[:id])
    if current_user == @tree.user
      @tree.destroy
      redirect_to trees_path, notice: "Tree deleted"
    else
      redirect_to tree_path(@tree), notice: "You can't delete this tree"
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :address, :description, :price_per_year, :quantity_per_year, :fruit_type)
  end
end
