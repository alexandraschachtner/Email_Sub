class Subscriber < ApplicationRecord
 validates :email, presence: true
 validates :sub, inclusion: ['yes', 'no']

end
