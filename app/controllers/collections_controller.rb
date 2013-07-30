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

  def update
    @collection = Collection.find(params[:id])
    if @collection.update_attributes(params[:collection])
      redirect_to @collection, notice: "Collection was updated Successfully"
    else
      render :edit
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

    redirect_to collections_url
  end

  def edit
    @collection = current_user.collections.find(params[:id])
  end

#Not sure if this is correct
  def create
    @collection = Collection.new(collection_params)
    @collection.user_id = current_user.id
    if @collection.save
      redirect_to collections_path
    else
      render :new
    end
  end

private

  def collection_params
    params.require(:collection).permit(:name, :user_id, :collection)
  end

end
