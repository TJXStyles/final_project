class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.new(params[:collection])
    if @collection.save
      flash[:notice] = "Save Successful"
      redirect_to collections_path
    else
      render :new
    end
  end

  def new
    @collection = Collection.new
  end

  def destroy
  end

  def edit
  end

#Not sure if this is correct
  def create
    @collection = Collection.new(params[:collection])
    
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
  params.require(:user).permit(:name, :user_id)
end

end
