class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :delete]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks.save
  end

  def edit
  end

  def update
    @tasks.update(task_params)
  end

  def delete
    @tasks.destroy
  end
end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end

def set_task
  @tasks = Task.find(params[:id])
end
