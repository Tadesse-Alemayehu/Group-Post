# frozen_string_literal: true

class GroupComponent < ViewComponent::Base
include Devise::Controllers::Helpers
  def initialize(group:)
    @group = group
  end

end
