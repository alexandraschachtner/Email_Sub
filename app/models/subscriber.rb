class Subscriber < ApplicationRecord
 validates :email, presence: true
 # validates :sub, inclusion: ['Yes', 'No']

end
