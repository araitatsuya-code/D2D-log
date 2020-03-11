class TasksController < ApplicationController
  before_action :set_tasks, only: [:show, :edit, :update, :destroy, ]

  def index
    # @tasks = current_user.tasks
    @tasks = current_user.tasks.rank(:row_order)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new task_params
    @task.save!
    redirect_to tasks_url
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_url
  end

  def destroy
    @task.destroy
    redirect_to tasks_url
  end

  def sort
    task = Task.find(params[:task_id])
    task.update(task_params)
    render body: nil 
  end

  private
    def target_task task_id
      current_user.tasks.where(id: task_id).take
    end

    def task_params
      params.require(:task).permit(:content, :status, :target_at, :completed_at, :row_order_position)
    end

    def set_tasks
      @task = target_task params[:id]
    end
  
  end
