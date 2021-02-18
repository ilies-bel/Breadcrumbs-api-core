class ManageProcessesController < ApplicationController
  before_action :set_process, only: [:show, :update, :destroy]


  # GET /theme
  def index
    @processes = InterviewProcess.all
    json_response(@processes)
  end

  # POST /theme
  def create
    @process = InterviewProcess.create!(process_params)
    json_response(@process, :created)
  end

  # GET /theme/:id
  def show
    json_response(@process)
  end

  # PUT /theme/:id
  def update
    @process.update(process_params)
    head :no_content
  end

  # DELETE /theme/:id
  def destroy
    InterviewMilestone.find_by_interview_process_id(params[:id]).destroy!
    @process.destroy
  end


  private

  def process_params
    # whitelist params
    params.permit(:process_name)
  end

  def set_process
    @process = InterviewProcess.find(params[:id])
  end


end
