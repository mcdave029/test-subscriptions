class TaskWorker
  include Sidekiq::Worker

  def perform(id)
    task = Task.find(id)
    TestSubscriptionSchema.subscriptions.trigger("taskWasCreated", {}, task)
  end
end
