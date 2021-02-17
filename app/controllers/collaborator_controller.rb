class CollaboratorController < ApplicationController
  before_action :authenticate_user!
  before_action :set_collaborator, only: %i[update destroy]


  # GET /collaborator
  def index
    @collaborator = Collaborator.find_by_user_id(@current_user_id)
    json_response(@collaborator)
  end

  # POST /collaborator
  def create
    @collaborator = Collaborator.create!(collaborator_params) do |u|
      u.user_id = @current_user_id
    end
    json_response(@collaborator, :created)
  end

  # PUT /collaborators/:id
  def update
    @collaborator.update(collaborator_params)
    head :no_content
  end

  # DELETE /collaborators/:id
  def destroy
    @collaborator.destroy
    head :no_content
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
