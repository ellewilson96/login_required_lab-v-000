class SecretsController < ApplicationController

  def show 
    return head(:forbidden) unless session.include? :user_id 
    @secret = Secret.find(params[:id])
end
