# frozen_string_literal: true

class ShowPostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

end
