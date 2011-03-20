class VanitiesController < ApplicationController

  def show
    # Note that in this case, any model using the vanities system
    # MUST be set up via REST.

    if(v = Vanity.find_by_name(params[:vname]))
      redirect_to v.vain
    else
      # If the vanity name can't be found, render a 404
      respond_to do |f|
        f.html { render :status => :not_found, :file => File.join(Rails.root, "public", "404.html") }
        f.xml  { head :not_found }
        f.any  { head :not_found }
      end
    end    
  end
end