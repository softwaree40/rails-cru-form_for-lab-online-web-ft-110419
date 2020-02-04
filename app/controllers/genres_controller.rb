class GenresController < ApplicationController
     def index 
         
        @genre = Genre.all
        
     end
     
     def show 
        @genre = Genre.find(params[:id])
     end
     
     def new 
        @genre = Genre.new 
     end
     
     def create 
        @genre = Genre.create(genres_params(:name))
        redirect_to genre_path(@genre)
     end
     
     def edit 
       @genre = Genre.find(params[:id])
     end 
     
     def update 
       @genre = Genre.find(params[:id])
       @genre.update(genres_params(:name))
       redirect_to genre_path(@genre)
     end
     
     private 
     
     def genres_params(*args)
        params.require(:genre).permit(*args)
     end
  
end
  
  
