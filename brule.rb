@dictionary = { 
  'man' => 'hunk',
  'guy' => 'hunk',
  'men' => 'hunks',
  'guys' => 'hunks',
  'pringle-brule' => 'Pringle-Brule-Salahari', 
  'johnny' => 'Jimmy',
  'boden' => 'Brongus',
  'david' => 'Daniel',
  'liebe' => 'Drungle',
  'hart' => 'Hart',
  'don' => 'Dan',
  'davis' => 'Dungus',
  'rodriguez' => 'Rongriguez',
  'jackpot' => 'jackprot',
  'pizza' => 'preetza',
  'bruce' => 'Bringus',
  'observatory' => 'big old dirty church',

  # Unchanged words
  'hart' => 'Hart',
  'ron' => 'Ron',
  'don' => 'Don',
  'volante' => 'Volante',
}

@words = []
ARGV.each do |word|
  @words << word.dup
end

@words.each do |word|
  if @dictionary.include? word.downcase
    word.replace @dictionary[word.downcase]
  elsif word.length > 2
    unless (word[1] == 'r') || (word[0] == 'r') || (rand(2) == 1)
      word.insert(1, 'r')
    end
    if (word[-1] == 'l') && (word[-2] == 'e')
      word[-1] = 'e'
      word[-2] = 'l'
      word[-3] = 'g'
    end
    if word[-1] == 's'
      word[-2] = 'u'
    end
    if word.length > 11
      word.replace 'dingus'
    end
  end
end

puts @words.join(' ')