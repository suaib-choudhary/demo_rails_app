class UsersController < ApplicationController
  def index
    @records = current_user.file_records
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
