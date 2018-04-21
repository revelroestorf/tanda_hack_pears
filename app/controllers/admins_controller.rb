class AdminsController < ApplicationController

  def index
  end

  def pairing
  end

  def create

    @users = User.all
    user_ids = []
    @users.each do |user|
      user_ids.push(user.id)
    end
    user_ids.shuffle!

    number_of_pairs = @users.count/2

    user1_ids = []
    count = 0
    number_of_pairs.times do
      user1_ids.push(user_ids[count])
      count += 1
    end
    # puts user1_ids

    user_ids.reverse!
    user2_ids = []
    count = 0
    number_of_pairs.times do
      user2_ids.push(user_ids[count])
      count += 1
    end
    # puts user2_ids

    count = 0
    number_of_pairs.times do
      Pairing.create(user1: user1_ids[count], user2: user2_ids[count])
      count += 1
    end

    flash[:notice] = "Pairings complete"

  end

  def destroy
    Pairing.all.delete_all
    redirect_to(admins_path)
  end

  # before_action :set_admin, only: [:show, :edit, :update, :destroy]
  #
  # # GET /admins
  # def index
  #   @admins = Admin.all
  # end
  #
  # # GET /admins/1
  # def show
  # end
  #
  # # GET /admins/new
  # def new
  #   @admin = Admin.new
  # end
  #
  # # GET /admins/1/edit
  # def edit
  # end
  #
  # # POST /admins
  # def create
  #   @admin = Admin.new(admin_params)
  #
  #   if @admin.save
  #     redirect_to @admin, notice: 'Admin was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  #
  # # PATCH/PUT /admins/1
  # def update
  #   if @admin.update(admin_params)
  #     redirect_to @admin, notice: 'Admin was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end
  #
  # # DELETE /admins/1
  # def destroy
  #   @admin.destroy
  #   redirect_to admins_url, notice: 'Admin was successfully destroyed.'
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_admin
  #     @admin = Admin.find(params[:id])
  #   end
  #
  #   # Only allow a trusted parameter "white list" through.
  #   def admin_params
  #     params.fetch(:admin, {})
  #   end
end
