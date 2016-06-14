class TasksController < ApplicationController
  def index
    @tasks = Task.all
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
    params.require(:task).permit :done
  end
end
