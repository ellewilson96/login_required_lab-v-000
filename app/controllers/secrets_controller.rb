class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secret = Secret.find(params[:id])
  end

  private

  def require_login
    return head(:forbidden) unless session.include?:user_id
  end
end
