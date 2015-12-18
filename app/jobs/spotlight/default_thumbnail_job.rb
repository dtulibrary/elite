module Spotlight
  class DefaultThumbnailJob < ActiveJob::Base
    # override default thumbnail job to do nothing
    def perform _
    end
  end
end
