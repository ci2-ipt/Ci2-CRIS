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
    @instituicaos = Instituicao.new(instituicao_params)

    if @instituicaos.save
      redirect_to @instituicaos
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @instituicaos = Instituicao.find(params[:id])
  end

  def update
    @instituicaos = Instituicao.find(params[:id])

    if @instituicaos.update(instituicao_params)
      redirect_to @instituicaos
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @instituicaos = Instituicao.find(params[:id])
    @instituicaos.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def instituicao_params
      params.require(:Instituicao).permit(:nome, :url, :imagem, :parceiros)
    end
end
