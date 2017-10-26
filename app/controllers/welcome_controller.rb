class WelcomeController < ApplicationController
  before_action :authenticate_user!, onl: :dashboard

  def index
  end

  def dashboard
    @contratos = Contrato.all
  end
end
