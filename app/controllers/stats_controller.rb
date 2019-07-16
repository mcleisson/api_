class StatsController < ApplicationController

    def index
        @urlhits = Url.sum(:hits) #Quantidade de hits em todas as urls do sistema
        @urls = Url.count(:url) #Quantidade de urls cadastradas
        @topten = Url.order(hits: :asc) #Ordena por quantidade de hits e mostra os 10 primeiros //.last(10)
          render json: {hits:@urlhits, URLCount:@urls, TopUrls:@topten},status: :ok #Retorna o json com as informações de Qtde de hits e urls
    end
    
    
end
