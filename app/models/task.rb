class Task < ApplicationRecord
  after_commit do
    TestSubscriptionSchema.subscriptions.trigger("taskWasCreated", {}, self)
  end
end
