class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def upvote
    votes.create
  end

  def downvote
    votes.take.destroy
  end
end
