class DemoController < ApplicationController

  layout 'application'

  def index
    render('index')
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
