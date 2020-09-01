require "yaml"

def load_library(file)
  hoa = YAML.load_file(file)
  hoh = {}
  hoa.each do |key, value|
    hoh[key.to_s] = {:english => value[0], :japanese => value[1]}
  end
  return hoh
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

puts load_library("emoticons.yml")