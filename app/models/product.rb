class Product < ApplicationRecord
# 	# validates :name, presence: { strict: true }
# 	validates :name, presence: true , uniqueness: true
# 	#validates :name,presence: true,uniqueness: { scope: :description, message: "should happen" }
# 	validates :check_box, acceptance: { message: 'must be abided' }
#     #validates :name, exclusion: { in: %w(www us ca jp),message: "%{value} is reserved." }
#     # validates :description, inclusion: { in: %w(small medium large), message: "%{value} is not a valid description" }
#      # validates :email, confirmation: true
#      # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
#     #validates :description, numericality: { only_integer: true }
#     #validates :description, numericality: {greater_than: 3 }
#     #validates :description, length: { minimum: 4,too_long: "%{count} characters is the maximum allowed" },allow_nil: true

#     # validates_with GoodnessValidator, fields: [:name]

#     # validates_each :name, :description do |record, attr, value|
#     # record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
# # end
# validates :description, presence: true, if: :name_only?

#   def name_only?
#   	# byebug
#     name == "Ruby4"

# validate do |product|
#     errors.add :name, :too_plain, message: "is not cool enough"
#   end

 # validate do |product|
 #    errors.add :base, :invalid, message: "This person is invalid because ..."
 #  end



  validates :name, presence: true, length: { minimum: 3 }

  before_save :check_c, if: :check_box?
   def check_c
     self.description = name
   end



   before_save ::Callbacks::MarkDeleted
end



# validates :password, confirmation: true,unless: Proc.new { |a| a.password.blank? }



# validate :check_description,
 

#   def check_description
#   	total = 5
#     if description > total
#       errors.add(:description, "can't be in the jsdsdkfc")
#     end
#   end

  


# end


# class GoodnessValidator < ActiveModel::Validator
#   def validate(record)
#     if options[:fields].any? { |field| record.send(field) == "Evil" }
#   	# byebug
#       record.errors.add :name, "This person is evil"
#     end
#   end
# end




    

