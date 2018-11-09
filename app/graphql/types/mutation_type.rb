module Types
  class MutationType < Types::BaseObject
    field :create_task, Types::TaskType, null: false
    def create_task
      Task.create(name: "For Testing")
    end
  end
end
