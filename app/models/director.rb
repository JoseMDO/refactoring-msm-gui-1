# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def director
    d_id = self.director_id
    matching_directors = Direcotr.where({ :id => d_id})
    the_director = matching_directors[0]

    return the_director
  end

  def filmography 
    matching_movies = Movie.where({ :director_id => self.id})

    return matching_movies

  end

end
