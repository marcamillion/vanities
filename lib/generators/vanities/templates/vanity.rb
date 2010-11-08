class Vanity < ActiveRecord::Base
  # The "Vanity" class has a polymorphic association called "vain".
  # In any model that has a vanity entry, you can reference this association like so:
  #
  # has_one :vanity, :as => :vain
  #
  # For your convenience, there's a simpler method called 'has_vanity'.  Just call it inside
  # any model that should have a vanity:
  #
  # has_vanity
  #
  # And that's it!  See the vanities README file for more information.

  belongs_to :vain, :polymorphic => true
  validates :name, :presence => true, :uniqueness => true
end