class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
    @new_task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!
  end

  def update
    @task = Task.find(params[:id])
    if params[:done] == true.to_s
      @task.done_at = nil
    else
      @task.done_at = Time.now
    end
    @task.save!
  end

  def destroy
    @task = Task.where(id: params[:id]).first
    @task.destroy if @task
  end

private
  def task_params
    params.require(:task).permit(:title)
  end
end