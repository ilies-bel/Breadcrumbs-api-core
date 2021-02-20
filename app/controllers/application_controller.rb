# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include AuthCommon
  include ExceptionHandler
  include Response

  respond_to :json

  skip_before_action :verify_authenticity_token
  before_action :underscore_params!

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user

  private

  def underscore_params!
    params.deep_transform_keys!(&:underscore)
  end


end
