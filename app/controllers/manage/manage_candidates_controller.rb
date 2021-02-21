class Manage::ManageCandidatesController < ApplicationController



  def invite
    # TODO authorization collaborator
    @invitation_token = JWT.encode({
                                     role: 'candidate',
                                     business_title_id: params[:business_title_id] ,
                                     office_id: params[:office_id] ,
                                     process_id: params[:process_id] || 1 ,
                                     exp: 2.days.from_now.to_i },
                                   Rails.application.secrets.secret_key_base)

    @url = request.base_url + "/users?token=" + @invitation_token

    @jwt_payload = JWT.decode(@invitation_token, Rails.application.secrets.secret_key_base).first # TODO remove

    json_response(json: { "url" => @url, "decoded" => @jwt_payload})
  end


  private

  def candidate_params
    # whitelist params
    params.permit(:business_title_id, :office_id, :process_id )
  end

end
