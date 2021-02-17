class ManageCollaboratorsController < ApplicationController
  before_action :set_collaborator, only: [ :update, :destroy]


  def index
    @collaborators = Collaborator.all
    json_response(@collaborators)
  end

  # POST /collaborators
  def create
    @collaborator = Collaborator.create!(collaborator_params)
    json_response(@collaborator, :created)
  end

  # PUT /collaborators/:id
  def update
    @collaborator.find(id: params[:id].split(',')).update_all(collaborator_params)
    head :no_content
  end

  # DELETE /collaborators/:id,:id2,:id3
  def destroy
    @collaborator.find(id: params[:id].split(',')).destroy_all # TODO
    @collaborator.delete([2,3,4])
    head :no_content
  end

  private

  def collaborator_bulk_params
    # whitelist params
    params.permit(:business_title_id, :office_id )
  end

  def set_collaborator
    @collaborator = Collaborator.find(params[:id])
  end

end
