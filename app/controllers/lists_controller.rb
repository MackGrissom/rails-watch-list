class ListsController < ApplicationController

    def index
        @list = List.all
    end
    
    def show
        @list = List.find(params[:id])
    end
    
    
    def new
        @list = List.new
    end 


    def create
        @list = List.new(list_params)
        if @list.save
            redirect_to list_path(@list)
        else 
            render :new
    end

    # def update
    #     if @list.update(list_params) 
    # end

end


private 

    # Use callbacks to share common setup or constraints between actions.
    # def set_movies
    #     @movies = movies.find(params[:id])
    #   end
  
      # Only allow a list of trusted parameters through.
      def list_params
        params.require(:list).permit(:name)
      
      end
end