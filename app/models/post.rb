class Post < ApplicationRecord

    validates :category, inclusion: ["Fiction", "Non-Fiction"]
    validates :content, length: {minimum: 100}
    validates :title, presence: true, uniqueness: true


end
