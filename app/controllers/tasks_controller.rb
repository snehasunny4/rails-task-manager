class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
  end

  def delete
    @tasks = Task.find(params[:id])
    @tasks.destroy
  end
end


private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
