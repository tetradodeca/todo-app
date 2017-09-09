class TaskslistsController < ApplicationController

def index
    @taskslist = Taskslist.all.order("created_at DESC")
end

def new
    @taskslist = Taskslist.new
end

def create
    @taskslist = Taskslist.new(task_params)
    if @taskslist.save
        redirect_to taskslists_path
    else
        render :new
    end
end

def show
    @taskslist = Taskslist.find(params[:id])
end

def edit
    @taskslist = Taskslist.find(params[:id])
end

def update
    @taskslist = Taskslist.find(params[:id])
    if @taskslist.update(task_params)
        redirect_to taskslist_path(id: @taskslist.id)
    else
        render :edit
    end

end

def destroy
    @taskslist = Taskslist.find(params[:id])
    @taskslist.destroy
    redirect_to taskslists_path
end


private

def task_params
    params.require(:taskslist).permit(:title, :description)
end

end

