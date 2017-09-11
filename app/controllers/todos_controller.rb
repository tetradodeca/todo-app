class TodosController < ActionController::Base

def create
    task = Taskslist.find(params[:post_id])
    todo_params = params.required(:todo).permit(:list)
    taskslist.todos.create(todo_params)
    redirect_to taskslist_path(id: task.id)
end

end