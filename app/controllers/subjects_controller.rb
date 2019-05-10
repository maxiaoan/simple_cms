class SubjectsController < ApplicationController
  def index
    @subjects = Subject.sorted # stored definded in /suject.rb
    #render('index')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => "Default name")

  end

  def create

    # Instantiate a new object form parameters
    @subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
    # If save succeeds, redirect to the index action
      flash[:notice] = "Subject created successfully."
      redirect_to(subjects_path)
    else
    # if save fails, redisplay the form so the user can fix problems
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    # Find an object form parameters
    @subject = Subject.find(params[:id])
    # Update the object
    if @subject.update_attributes(subject_params)
    # If save succeeds, redirect to the show  action
      flash[:notice] = "Subject updated successfully."
      redirect_to(subject_path(@subject))
    else
    # if save fails, redisplay the form so the user can fix problems
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}'' destroyed successfully."
    redirect_to(subjects_path)
  end
  
  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
