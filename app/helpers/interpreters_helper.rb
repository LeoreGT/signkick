module InterpretersHelper

  def list_languages(interpreter)
    if interpreter.languages.count > 3
      list_of_3_first_languages  = interpreter.languages.limit(3).map {|language| "<p> #{language.name} </p>" }.join().html_safe
      return list_of_3_first_languages + "<p>...more</p>".html_safe
    else
      return interpreter.languages.map {|language| "<p> #{language.name} </p>" }.join().html_safe
    end
  end

  def generate_review_stars(rating)
    rating = (rating * 2).ceil.to_f / 2
    if rating - rating.to_i == 0.5
      return (('<i class="fa fa-star" aria-hidden="true"></i>' * rating.to_i) +
               '<i class="fa fa-star-half-o" aria-hidden="true"></i>' +
              ('<i class="fa fa-star-o" aria-hidden="true"></i>' * (5 - rating.to_i))).html_safe
    else
      return ('<i class="fa fa-star" aria-hidden="true"></i>' * rating.to_i +
             ('<i class="fa fa-star-o" aria-hidden="true"></i>' * (5- rating.to_i))).html_safe
    end
  end
end
