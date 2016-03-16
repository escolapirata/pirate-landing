class BetaTestersController < ApplicationController
   
  def create
    @beta = BetaTester.new(beta_params)

    respond_to do |format|
      if @beta.save
        format.js
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def beta_params
      params.require(:beta_tester).permit(:email)
    end
    
end