class PlantsController < ApplicationController

##/GET

def index 
allPlants = Plant.all
render json: allPlants, status:200
end 

##GET

def show
onePlant= Plant.find_by(id: params[:id])
    if onePlant 
    render json: onePlant
    else 
        render json: {error:"Plant Not Found"}, status: 404
    end
end

def create 
    plantCreate = Plant.create(params.permit(:name, :image, :price))
    render json: plantCreate, status:201
end 

end
