class DeafUsersController < ApplicationController

  def new
    @deaf_user = DeafUser.new
  end

  def create
    @deaf_user = DeafUser.new(deaf_user_params)
    @deaf_user.user = current_user
    if @deaf_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @deaf_user.update(deaf_user_params)
    redirect_to interpreters_path
  end

  def destroy
    @deaf_user.destroy
  end

  private

  def find_deaf_user
    @deaf_user = DeafUser.find(params[:id])
  end

  def deaf_user_params
    params.require(:deaf_user).permit(:name)
  end

end
