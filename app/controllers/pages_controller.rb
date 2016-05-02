class PagesController < ApplicationController
   
   def index
       @beta_tester = BetaTester.new
       if params[:name]&&!params[:name].empty?
          redirect_to controller: 'pages', action: 'search', name: params[:name]
       end
   end
   
   def search
      @entities = Entity. where('LOWER(name) LIKE ?', "%#{params[:name].downcase}%")
   end
      
end