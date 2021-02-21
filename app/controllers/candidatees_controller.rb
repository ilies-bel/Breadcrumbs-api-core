class CandidateesController < ApplicationController
  before_action :authenticate_user!

  def index

    @process_milestone = InterviewMilestone.find_by_interview_process_id(params[:id])
    json_response(@process_milestone)
  end



end
