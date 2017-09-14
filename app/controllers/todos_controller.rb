class TodosController < ApplicationController

def create
    task = Taskslist.find(params[:taskslist_id])
    todo_params = params.require(:todo).permit(:list)
    task.todos.create(todo_params)
    redirect_to taskslist_path(id: task.id)
end

def edit
    @taskslist = Taskslist.find(params[:taskslist_id])
    @todo = Todo.find(params[:id])
end

def update
    @taskslist = Taskslist.find(params[:taskslist_id])
    @todo = Todo.find(params[:id])
    if @todo.update(task_params)
        redirect_to taskslist_path(id: @taskslist.id)
    else
        render :edit
    end
end

def destroy
    @taskslist = Taskslist.find(params[:taskslist_id])
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to taskslist_path(id: @taskslist.id)
end


private

def task_params
    params.require(:todo).permit(:list)
end

end