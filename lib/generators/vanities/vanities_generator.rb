class VanitiesGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  # Copy over the database migration template
  def generate_vanities_migration
    copy_file "create_vanities.rb", "db/migrate/#{timestamp}_create_vanities.rb"
  end
  
  # Copy over the vanity model
  def generate_vanity_model
    copy_file "vanity.rb", "app/models/vanity.rb"
  end
  
  # This method actually copies over the vanities controller code
  # into app/controllers/vanities_controller.rb
  def generate_vanities_controller
    copy_file "vanities_controller.rb", "app/controllers/vanities_controller.rb"
  end
  
  # Add the route to wire up the vanities controller
  # Indentation looks a little funky here because I'd strongly prefer
  # to keep the indentation in the target routes.rb file as it is
  def inject_new_route
    route "
  controller :vanities do 
    match ':vname' => :show, :via => :get, :constraints => {:vname => /[A-Za-z0-9\-\+]+/}
  end"
  end

  # This method prints some basic setup instructions for the user.
  def talk_to_user
    puts "****************************************"
    puts "  Thanks for installing vanities!"
    puts "****************************************"
    puts "Now that you've run the generator, all you have left to do are the following tasks:"
    puts "1) rake db:migrate"
    puts "2) In any model you want to have a vanity URL, add the line:"
    puts "      has_vanity"
    puts "   Inside the model, just like you would an association (this is in fact what it does)"
    puts "3) Make sure that the model in question is set up as a RESTful resource in your"
    puts "   project's routes file.  If it isn't, this won't work."
    puts ""
    puts "Check out this project's GitHub page or README.rdoc for more information."
    puts ""
  end

private
  def timestamp
    Time.now.strftime("%Y%m%d%H%M%S")
  end
end