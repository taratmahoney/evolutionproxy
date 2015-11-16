class ServicesController < ApplicationController
  
  def index

    @service = Service.all
  end

  def show
    
      @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to services_url
    else
      render 'new'
    end

  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.save
      redirect_to services_url
    else
      render 'new'
    end
    
  end

  def destroy
  end


  private

  def service_params
    params.require(:service).permit(:name, :description)
  end


end
