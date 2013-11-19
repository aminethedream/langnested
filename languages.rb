languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
 


sorted_language = {}
languages.each do |style, styles_hash|
  styles_hash.each do |language, languages_hash|
    sorted_language[language] = languages_hash unless sorted_language[language]
    sorted_language[language][:style]=[] unless sorted_language[language][:style]
     sorted_language[language][:style] << style
  end
end
p sorted_language