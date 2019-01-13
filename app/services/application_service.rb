# frozen_string_literal: true

class ApplicationService
  def success(message = nil, data = nil)
    Result::Success.new(message, data)
  end

  def failure(message = nil, data = nil)
    Result::Failure.new(message, data)
  end
end
