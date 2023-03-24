class AdoptionsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new
  end

  def create
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new(adoption_params)
    @adoption.tree = @tree
    @adoption.user = current_user
    if @adoption.save
      redirect_to tree_path(@tree)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def adoption_params
    params.require(:adoption).permit(:name, :starts_at, :ends_at)
  end
end
