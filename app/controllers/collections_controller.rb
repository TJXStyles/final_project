class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    @collection = Collection.new
    # build and new
    # build = 
    # conllection.new
    # conleection.user_id = current_user.id
  end

  def show
    @collection = Collection.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @collection = current_user.collections.new
    respond_to do |format|
      format.html
    end
  end

  def destroy
    @collection = current_user.collections.find(params[:id])
    @collection.destroy

    respond_to do |format|
      format.html
    end
  end

  def edit
    @collection = current_user.collections.find(params[:id])
  end

#Not sure if this is correct
  def create
    @collection = Collection.new(collection_params)
    @collection.user_id = current_user.id
    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection }
      else
        format.html { render action: "new" }
      end
    end
  end

private

  def collection_params
    params.require(:collection).permit(:name, :user_id)
  end

end
