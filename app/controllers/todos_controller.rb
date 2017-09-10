class TodosController < ApplicationController



def new
    @todo = Todo.new
end


def create
    @todo = Todo.new(todo_params)
    if @todo.save
        flash[:notice] = "SubTask Created!"
        redirect_to taskslist_path(id: @taskslist.id)
    else
        flash.now[:notice] = "Fields cannot be blank!"
        render :new
    end
end




private

def todo_params
    params.require(:todo).permit(:list)
end

end