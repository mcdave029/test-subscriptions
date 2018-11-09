class TaskWorker
  include Sidekiq::Worker

  def perform(*args)
  end
end
