class BetaTestersController < ApplicationController
   
  def create
    @beta = BetaTester.new(beta_params)

    respond_to do |format|
      if @beta.save
        format.html { redirect_to root_path, notice: 'Obrigado pelo interesse! Avisaremos assim que a versão Beta estiver disponível.' }
      else
        format.html {redirect_to root_path, notice: 'Falha ao salvar. Favor entrar em contato por e-mail.' }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def beta_params
      params.require(:beta_tester).permit(:email)
    end
    
end