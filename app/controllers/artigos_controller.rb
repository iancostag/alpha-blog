class ArtigosController < ApplicationController
  before_action :set_artigo, only: [ :show, :edit, :update, :destroy ]
  def show
    # byebug
  end


  def index
    @artigos = Artigo.all
  end

  def new
    @artigo = Artigo.new
  end

  def create
    @artigo = Artigo.new(parametros_artigos)
    if @artigo.save
      flash[:notice] = "Artigo salvo com sucesso!"
      redirect_to @artigo
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @artigo.update(parametros_artigos)
      flash[:notice] = "Artigo atualizado com sucesso!"
      redirect_to @artigo
    else
      render "edit"
    end
  end

  def destroy
    @artigo.destroy
    redirect_to artigos_path
  end

  private

  def set_artigo
  @artigo = Artigo.find(params[:id])
  end

  def parametros_artigos
    params.require(:artigo).permit(:titulo, :descricao)
  end
end
