# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(comment:)
    @comment = comment
  end

end
