class InstituicaosController < ApplicationController
  def index
    @instituicaos = Instituicao.all
  end

  def show
    @instituicaos = Instituicao.find(params[:id])
  end

  def new
    @instituicaos = Instituicao.new
  end

  def create
    @instituicaos = Instituicao.new(article_params)

    if @instituicaos.save
      redirect_to @instituicaos
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:Instituicao).permit(:nome, :url, :imagem, :parceiros)
  end
end
