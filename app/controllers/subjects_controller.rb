class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => "Default"})
  end

  def create
    @subject = Subject.new()

    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])

  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      redirect_to(subjects_path(@subject)
    else
      render('new')
    end
  end

  def delete
    @subject = Subject.find(params[:id])

  end

  def destroy
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end
