class RequirementSpecificationsController < ApplicationController
  def index
    @requirement_specifications = RequirementSpecifications.all
  end
  def new
    @project = params[:project_id]
    @requirement_specification = RequirementSpecifications.new
  end
  def create
    @requirement_specification = RequirementSpecifications.new(project_requirement_params)
    @requirement_specification.save
    redirect_to project_requirement_specifications_url
  end
  def edit
    @rs = RequirementSpecifications.find(params[:id])
  end
  def update
    
  end

  def destroy
  end  
  private
  
  def project_requirement_params
    params.require(:requirement_specifications).permit(:user_id,:project_id,:title,:description)
  end
end
