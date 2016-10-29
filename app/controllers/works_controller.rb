class WorksController < ApplicationController
  def index
  	@works= Work.all
  end

  def destroy
  	Work.find(params[:id]).destroy
  	redirect_to root_path
  end
end
