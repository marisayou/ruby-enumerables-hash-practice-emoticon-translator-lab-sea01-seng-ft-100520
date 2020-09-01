require "yaml"

def load_library(file)
  return YAML.load_file(file)
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
end

def get_english_meaning(file, emoticon)
  dict = load_library(file)
  dict.each do |key, value|
    for i in value
      if i == emoticon
        return key
      end
    end
  end
      
end
