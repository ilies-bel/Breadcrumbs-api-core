class ThemeController < ApplicationController

  before_action :set_theme, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @theme = Theme.all
    json_response(@theme)
  end

  # POST /todos
  def create
    @theme = Theme.create!(theme_params)
    json_response(@theme, :created)
  end

  # GET /todos/:id
  def show
    json_response(@theme)
  end

  # PUT /todos/:id
  def update
    @theme.update(theme_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @theme.destroy
    head :no_content
  end

  private

  def theme_params
    # whitelist params
    params.permit(:primary_color, :secondary_color, :splash_logo_url, :created_by)
  end

  def set_theme
    @theme = Theme.find(params[:id])
  end

end
