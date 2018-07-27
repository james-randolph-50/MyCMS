class DemoController < ApplicationController

  def index

  end

  def hello
  end

  def other_hello
    redirect_to(:action => 'index')
  end

end
