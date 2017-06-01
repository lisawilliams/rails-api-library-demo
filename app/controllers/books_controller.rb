# frozen_string_literal: true

# Controller

class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

# CRUD

# Create

def create
  @book = Book.new(book_params)
  if @book.save
    render json: @book, status: :created
  else
    render json: @book.errors, status: :unprocessable_entity
  end
end

# Read

def show
  render json: @book
end

# Update

def update
  if @book.update(book_params)
    head :no_content
  else
    render json: @book.errors, status: :unprocessable_entity
  end
end

# Delete

def destroy
  @book.destroy
  head :no_content
end

# Validation/Frustrate Hackers

def set_book
  @book = Book.find(params[:id])
end
private :set_book

def book_params
  params.require(:book).permit(:title, :author_id)
end
private :book_params
end
