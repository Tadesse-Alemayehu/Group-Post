# frozen_string_literal: true

class NewPostComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(post:, group:)
    @post = post
    @group = group
  end

end
