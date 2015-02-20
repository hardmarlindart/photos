class ElementosController < ApplicationController
  def index
    @elementos = Elemento.all
  end

  def new
    @elemento = Elemento.new
  end

  def create
    @elemento = Elemento.new(elemento_params)
     if @elemento.save
       flash[:notice] = "Elemento Criado."
       redirect_to @elemento
     else
       #implemnetar  depois
     end
  end

   def show
     @elemento = Elemento.find(params[:id])
   end

  private

  def elemento_params
    params.require(:elemento).permit(:alcunha)
  end
end
