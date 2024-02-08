# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def characters
    my_id = self.id

    matching_characters = Character.where({ :movie_id => my_id })

    return matching_characters
  end
  def director
    my_id = self.id

    matching_directors Directors.where({ :direcotr_id => my_id })

    return matching_directors
  end

end
