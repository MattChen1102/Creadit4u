class Admin::UsersController < Admin::BaseController
  def index
    @users = User.page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: '建立使用者成功'
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to admin_users_path, notice: '更新使用者成功'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, notice: '此使用者已被刪除成功'
  end

  private

  def user_params
    params.require(:user).permit(
      :email, :password, :password_confirmation
    )
  end
end