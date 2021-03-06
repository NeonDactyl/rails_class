module MoviesHelper

  def format_gross(movie)
    suffix = ''
    value = movie.total_gross
    if movie.total_gross >= 1000000000
      suffix = 'B'
      value = movie.total_gross / 1000000000
    elsif movie.total_gross >= 1000000
      suffix = 'M'
      value = movie.total_gross / 1000000
    end

    if movie.flop?
      return content_tag(:strong, 'Flop!')
    end
    value = number_to_currency(value)
    value + suffix
  end

  def image_for(movie)
    if movie.image_file_name.blank?
      image_tag 'coming_soon.jpeg'
    else
      image_tag movie.image_file_name
    end
  end
end
