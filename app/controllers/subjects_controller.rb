class SubjectsController < ApplicationController
  def index
    @subjects = Subject.sorted # stored definded in /suject.rb
    #render('index')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
  
end
