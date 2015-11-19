class EmployeesController < ApplicationController
  def index
    @employee = Employee.all
  end

  def show
    
      @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_url
    else
      render 'new'
    end

  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to employees_url
    else
      render 'new'
    end
    
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, notice: "Your post was deleted"
  end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :description)
  end
end
