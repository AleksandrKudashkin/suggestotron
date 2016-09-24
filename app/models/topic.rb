class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def upvote(user)
    votes.create(user: user)
  end

  def downvote
    votes.take.destroy
  end
end
