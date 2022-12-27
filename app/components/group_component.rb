# frozen_string_literal: true

class GroupComponent < ViewComponent::Base
include Devise::Controllers::Helpers
  def initialize(group:, current_user:)
    @group = group
    @current_user=current_user
  end

end
