# frozen_string_literal: true

class NewPostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

end
