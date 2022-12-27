# frozen_string_literal: true

class NewGroupComponent < ViewComponent::Base
include Devise::Controllers::Helpers
include ActionController::Helpers
  def initialize(group:)
    @group = group
  end

end
