# encoding: utf-8

class Admin::UsersController < ApplicationController
  layout 'admin'
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  rescue_from Pundit::NotAuthorizedError, with: :permission_denied
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    authorize @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end
  
  #def users
  #end

  # GET /users/new
  def new
    @user = User.new
    authorize @user
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    authorize @user
    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: admin_users_path }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_admin
    @user = User.find(params[:id])
    @user.roles << Role.find_by_name("Admin")
    redirect_to admin_users_path(@user)
  end
  def delete_admin
    @user = User.find(params[:id])
    @user.roles.delete(Role.find_by_name("Admin")) 
    redirect_to admin_users_path(@user)
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
  
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_users_path }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def permission_denied
      redirect_to(request.referrer || root_path, alert: "Bu sayfayı görüntüleme ve bu işlemi gerçekleştirme yetkiniz bulunmamaktadır.")
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      authorize @user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :student_number, :email, :avatar, :role_ids => [])
    end
end
