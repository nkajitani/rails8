class Admin::ProfilesController < Admin::BaseController
  def show; end

  def edit
    set_minimum_password_length
  end

  def update
    if current_user.update_without_current_password(account_update_params)
      bypass_sign_in current_user
      redirect_to admin_profile_path, notice: "プロフィールを更新しました。"
    else
      set_minimum_password_length
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # Sets minimum password length to show to user
  def set_minimum_password_length
    @minimum_password_length = User.password_length.min
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
