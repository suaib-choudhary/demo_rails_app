class FileRecordsController < ApplicationController

  before_action :find_user
  before_action :find_record , only: [:edit, :update, :show, :destroy]


  def index
    if params[:tags].present?
      @records = @user.file_records.where("tags LIKE ? ", "%#{params[:tags]}%")
    else
      @records = @user.file_records
    end
  end

  def new
    @record = FileRecord.new
  end

  def create
    @record = @user.file_records.build(file_records_params)
    if @record.save
      flash[:notice] = 'Record added!'   
      redirect_to root_path
    else
      flash[:notice] = 'Faild to add record!'  
      render :new
    end
  end

  def edit    
  end

  def show
  end

  def update
    if @record.update(file_records_params)
      flash[:notice] = 'Record updated!'   
      redirect_to root_path
    else
      flash[:notice] = 'Faild to update record!'  
      redirect_to root_path
    end
  end

  def destroy
    if @record.destroy
      flash[:notice] = 'Record deleted!'   
      redirect_to root_path
    else
      flash[:notice] = 'Faild to delete record!'  
      redirect_to root_path
    end
  end
  private

  def find_user
    if params[:user_id].to_i == current_user.id
      @user = current_user
    else
      flash[:notice] = "You are not a valid user to view these records"
      redirect_to users_path(session[:user_id])
    end
  end

  def find_record
    @record = @user.file_records.where(id: params[:id]).first
    if @record
      return
    else
      flash[:notice] = "No record available "
      redirect_to users_path
    end
  end

  def file_records_params
    params.require(:file_record).permit(:title, :description, :tags,:file)
  end


end
