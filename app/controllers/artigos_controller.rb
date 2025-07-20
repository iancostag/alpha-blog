class ArtigosController < ApplicationController
  def show
    # byebug
    @artigo = Artigo.find(params[:id])
  end
end
