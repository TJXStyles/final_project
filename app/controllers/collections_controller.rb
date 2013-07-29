class CollectionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

private

def collection_params
  params.require(:user).permit(:name, :user_id)
end

end
