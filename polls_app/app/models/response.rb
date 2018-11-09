class Response < ApplicationRecord

  belongs_to :respondent
    class_name: :User
    foreign_key: :user_id
    primary_key: :id

end
