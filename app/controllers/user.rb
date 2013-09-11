PadrinoWithMysql::App.controllers :user do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :new do
    render 'user/new'   
  end

  post :create do
    User.create(:name => params[:name], :email => params[:email], :desc => params[:desc])
    @users = User.all
    render '/user/index'
  end

  get :index do
    @users = User.all
  end

  # delete :destroy , :with => :id do 
  #   raise 'sssssssssssssssss'
  # end

  get :destroy , :with => :id do
    @user = User.find(params[:id]).destroy
    redirect "/"
  end


end
