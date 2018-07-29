class DemoController < ApplicationController

  def index

  end

  def hello
    
    @id = params[:id]
    @page = params[:page]
    render('hello')
  end

  def other_hello
    redirect_to(:action => 'index')
  end

end
