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
    value = number_to_currency(value)
    value + suffix
  end
end
