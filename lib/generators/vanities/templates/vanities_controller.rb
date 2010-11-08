class VanitiesController < ApplicationController
  def show
    v = Vanity.find_by_name params[:vname]
    redirect_to v.vain
    # Note that in this case, any model using the vanities system
    # MUST be set up via REST.
  end
end