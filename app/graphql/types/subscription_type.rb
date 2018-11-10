class Types::SubscriptionType < GraphQL::Schema::Object
  field :task_was_created, Types::TaskType, null: false
  def task_was_created
  end
end
