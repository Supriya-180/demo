class User < ApplicationRecord
  
    validates :login,  presence: true

  # before_validation :ensure_login_has_a_value

  # private
  #   def ensure_login_has_a_value
  #     if !(login.present?)
  #       self.login = email unless email.blank?
  #     end
  #   end




# before_create do
#     self.email = login.capitalize if email.blank?
#   end



  # before_validation :normalize_name, on: :create

  # after_validation :set_local, on: :create

  # private
  #   def normalize_name
  #     self.login = login.downcase.titleize
  #        end
  # def set_local
  #     self.email = email.upcase
  #   end
    


after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!>>>!!!!!!!!!!"
  end


after_touch do |user|
    puts "You have touched an object"
  end


def presence_login
  if (login.present?)
    return 1
  end
end

def len_gth
  if login.length == 3
    return 1
  end
end

before_save :normal_rail, if: :presence_login, unless: :len_gth
  def normal_rail
    self.email=login
  end

  



end




