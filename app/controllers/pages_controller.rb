class PagesController < ApplicationController
   
   def index
       @beta_tester = BetaTester.new
   end
    
end