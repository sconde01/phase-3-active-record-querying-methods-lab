class Show < ActiveRecord::Base
  #.highest_rating: This method should return the highest value in the ratings column. Hint: if there is a .minimum Active Record method, might there be a .maximum method?
  def self.highest_rating
    self.maximum(:rating)
  end

  #.most_popular_show: Returns the show with the highest rating.
  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating).first
  end

  #.lowest_rating: Returns the lowest value in the ratings column.
  def self.lowest_rating
    Show.minimum(:rating)
  end

  #.least_popular_show: Returns the show with the lowest rating.
  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating).first
  end

  #.ratings_sum: Returns the sum of all of the ratings.
  def self.ratings_sum
    Show.sum(:rating)
  end

  #.popular_shows: Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.
  def self.popular_shows
    Show.where("rating >= ?", 5)
  end

  #.shows_by_alphabetical_order: Returns an array of all of the shows sorted in alphabetical order according to their names. Hint: use the .order Active Record method.
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end 