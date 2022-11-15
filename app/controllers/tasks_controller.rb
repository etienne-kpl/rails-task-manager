class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # Une fois la tâche créée, on redirige vers cette tâche
    # On devrait logiquement mettre en argument @task.id
    # Mais Rails sait qu'avec @task on veut uniquement l'id
    redirect_to task_path(@task)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
