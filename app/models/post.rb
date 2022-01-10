class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    
    # validate :clickbait

    # CLICKBAIT = [

    # ]

    # def clickbait
    #     unless title.match?("You Won't Believe These True Facts")
    #       errors.add(:title, "this is definitely clickbait")
    #     end
    # end
end
