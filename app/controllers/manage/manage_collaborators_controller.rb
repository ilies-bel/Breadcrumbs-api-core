class Manage::ManageCollaboratorsController < ApplicationController
  before_action :set_collaborator, only: [ :update, :destroy]



  def invite
    # TODO authorization collaborator
    #
    @invitation_token = JWT.encode({
                                     role: 'collaborator',
                                     business_title_id: params[:business_title_id] ,
                                     office_id: params[:office_id] ,
                                     exp: 2.days.from_now.to_i },
                                   Rails.application.secrets.secret_key_base)

    @url = request.base_url + "/users?token=" + @invitation_token

    @jwt_payload = JWT.decode(@invitation_token, Rails.application.secrets.secret_key_base).first # TODO remove

    json_response(json: { "url" => @url, "decoded" => @jwt_payload})
  end




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