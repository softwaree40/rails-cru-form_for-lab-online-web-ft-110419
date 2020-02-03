class ArtistsController < ApplicationController
     def index 
        binding.pry
      @artist = Artist.all
        
     end
     
     def show 
       @artist = Artist.find(params[:id]) 
     end
     
     def new 
       @artist = Artist.new 
     end
     
     def create 
      @artist = Arist.create(aritst_params(:name,:bio))
      redirect_to artist_path(@artist)
     end
     
     def edit 
        @artist = Artist.find(params[:id]) 
     end 
     
     def update 
        @artist = Artist.find(params[:id])
        @artist.update(aritst_params(:name,:bio))
        redirect_to artist_path(@artist)
     end
     
     private 
     
     def aritst_params(*args)
        params.require(:artist).permit(*args)
       
     end
  
end