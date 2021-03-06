class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    a = Show.highest_rating
    Show.where(rating: a).first
  end

  def self.lowest_rating
    a = Show.minimum(:rating)
  end

  def self.least_popular_show
    a= Show.lowest_rating
    Show.where(rating: a).first
  end

  def self.ratings_sum
    # binding.pry
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
