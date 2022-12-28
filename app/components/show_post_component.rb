# frozen_string_literal: true

class ShowPostComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(post:)
    @post = post
  end

end
