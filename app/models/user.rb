class User < ActiveRecord::Base
	has_many :collections
  authenticates_with_sorcery!

  attr_accessor :password_confirmation
 
end
