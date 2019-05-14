class DemoController < ApplicationController

  layout 'application'
	
  def index
     @array = [1,2,3,4,5]
    render('index')
  end

  def hello

    @id = params['id']
    @page = params[:page]


  	render('hello')
  end

  def other_hello
  	redirect_to(:controller => 'example', :action => 'index')
  end

  def baidu
    redirect_to('https:www.baidu.com')
  end

  def escape_output

  end
end
