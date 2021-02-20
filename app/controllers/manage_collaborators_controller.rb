class ManageCollaboratorsController < ApplicationController
  before_action :set_collaborator, only: [ :update, :destroy]


  def index
    @collaborators = Collaborator.all
    json_response(@collaborators)
  end

  def show
    json_response(@collaborator)
  end

  def update
    @collaborator.update(collaborator_params)
  end

  def destroy
    @collaborator.destroy
  end



  private

  def collaborator_params
    # whitelist params
    params.permit(:business_title_id, :office_id )
  end

  def set_collaborator
    @collaborator = Collaborator.find(params[:id])
  end

end
