class Task < ApplicationRecord
  after_commit do
    TaskWorker.perform_async(self.id)
    # TestSubscriptionSchema.subscriptions.trigger("taskWasCreated", {}, self)
  end
end
