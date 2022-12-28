# frozen_string_literal: true

class ShowCommentComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(comment:)
    @comment = comment
  end

end
