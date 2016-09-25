class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def set_vote(user, value)
    votes.create(user: user, value: value)
  end

  def votes_count 
    votes.sum(:value)
  end
end
