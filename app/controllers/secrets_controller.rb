class SecretsController < ApplicationController

  def new
  end
  def show
    redirect_to root_path unless session.include? :name
  end
end
