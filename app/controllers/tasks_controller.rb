class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new task_params
    if @task.save
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    @task = Task.find params[:id]
    if @task.update task_params
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit :name, :done
  end
end
