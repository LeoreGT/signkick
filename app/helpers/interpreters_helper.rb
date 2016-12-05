module InterpretersHelper

  def list_languages(interpreter)
    list_of_3_first_languages  = interpreter.languages.limit(3).map {|language| "<p> #{language.name} </p>" }.join().html_safe
    list_of_3_first_languages + "<p>...more</p>".html_safe if interpreter.languages.count > 3
  end
end
