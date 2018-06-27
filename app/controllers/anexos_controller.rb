class AnexosController < ApplicationController
  def new
    @anexo = Anexo.new
  end

  def create
    @anexo = Anexo.create(anexo_params)
    @anexo.save

    redirect_to new_anexo_path, notice: 'Enviado com sucesso.'
  end

  private
  def anexo_params
    params.require(:anexo).permit(files: [])
  end

end
