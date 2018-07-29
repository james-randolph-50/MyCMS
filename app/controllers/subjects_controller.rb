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
    @subject = Subject.new(params[:subject])
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
