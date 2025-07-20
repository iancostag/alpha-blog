class ArtigosController < ApplicationController
  def show
    # byebug
    @artigo = Artigo.find(params[:id])
  end

  def index
    @artigos = Artigo.all
  end
end
