class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    redirect_to root_url
  end

  def update
  end

  def new
    @book = current_user.books.new
  end

  def destroy
    @book = current_user.books.find(params[:id])
    @book.destroy
    redirect_to collections_path(@collection)
  end

  def create
    @book = Book.new(book_params)
    @book.collection_id = current_user.id
    if @book.save
      redirect_to collection_path(@collection)
    else
      render :new
    end
  end

  def edit
    @book = current_user.books.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :collection_id)
  end

end
