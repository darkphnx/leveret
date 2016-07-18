class HighPriorityTestJob
  include Leveret::Job

  queue_name 'test'
  priority :high

  def perform
    Leveret.logger.info "Starting High Priority Test Job #{params.inspect}"
    Leveret.logger.info "Done"
  end
end
