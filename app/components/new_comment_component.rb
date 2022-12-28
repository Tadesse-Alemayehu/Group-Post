# frozen_string_literal: true

class NewCommentComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(comment:, contents:)
    @comment = comment
    @contents=contents
  end

end
