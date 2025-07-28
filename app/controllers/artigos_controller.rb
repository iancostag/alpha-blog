class ArtigosController < ApplicationController
  def show
    # byebug
    @artigo = Artigo.find(params[:id])
  end


  def index
    @artigos = Artigo.all
  end

  def new
    @artigo = Artigo.new
  end

  def create
    @artigo = Artigo.new(params.require(:artigo).permit(:titulo, :descricao))
    if @artigo.save
      flash[:notice] = "Artigo salvo com sucesso!"
      redirect_to @artigo
    else
      render "new"
    end
  end

  def edit
        @artigo = Artigo.find(params[:id])
  end

  def update
    @artigo = Artigo.find(params[:id])
    if @artigo.update(params.require(:artigo).permit(:titulo, :descricao))
      flash[:notice] = "Artigo atualizado com sucesso!"
      redirect_to @artigo
    else
      render "Edit"
    end
  end
end
