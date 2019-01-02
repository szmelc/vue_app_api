# frozen_string_literal: true

module Result
  class Failure < Base
    def success?
      false
    end

    def flash
      { alert: message }
    end
  end
end
