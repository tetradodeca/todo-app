class Taskslist < ApplicationRecord
    has_many :todos, dependent: :destroy
    validates :title, presence: true
end