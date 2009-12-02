class UsersController < Clearance::UsersController
  def index
    @users = User.all
  end

  def show
    if current_subdomain
      @user = User.find_by_subdomain!(current_subdomain)
    else
      @user = User.find(params[:id])
    end
  end
end
