class ArtigosController < ApplicationController
  def show
    # byebug
    @artigo = Artigo.find(params[:id])
  end


  def index
    @artigos = Artigo.all
  end

  def new
  end

  def create
    @artigo = Artigo.new(params.require(:artigo).permit(:titulo, :descricao))
    @artigo.save
    redirect_to @artigo
  end
end
