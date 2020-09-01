require "yaml"

def load_library(file)
  return YAML.load_file(file)
end

def get_japanese_emoticon(file, emoticon)
  dict = load_library(file)
  dict.each do |key, value|
    if value[:english] = emoticon
      return value[:japanese]
    end
  end
end

def get_english_meaning(file, emoticon)
  dict = load_library(file)
  dict.each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
      
end

load_library(emoticons.yml)