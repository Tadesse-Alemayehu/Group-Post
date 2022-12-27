# frozen_string_literal: true

class GroupComponent < ViewComponent::Base
# include Devise::Controllers::Helpers
include ActionController::Base::HelperMethods
  def initialize(group:)
    @group = group
  end

end
