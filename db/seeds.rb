# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

phrases = [
  { 'text' => 'Brad Pitt', 'description' => 'person', 'weight' => 1},
  { 'text' => 'Paris Hilton', 'description' => 'person', 'weight' => 1},
  { 'text' => 'George Clooney', 'description' => 'person', 'weight' => 1},
  { 'text' => 'George Clooney actor', 'description' => 'person', 'weight' => 1},
  { 'text' => 'Steven Spielberg', 'description' => 'person', 'weight' => 1},
  { 'text' => 'Token Black', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'King Arthur', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Brad Pitt Fight Club', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Gipsy Danger', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'MacGyver', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Alien ', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Bernard Black', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Darth Vader', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Sookie Stackhouse ', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Eric Cartman', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'Elena Gilbert ', 'description' => 'character', 'weight' => 0.8},
  { 'text' => 'friends The last one', 'description' => 'tv episodes', 'weight' => 0.5},
  { 'text' => 'Bad Boys Supernatural', 'description' => 'tv episodes', 'weight' => 0.5},
  { 'text' => '24 8am 9am', 'description' => 'tv episodes', 'weight' => 0.5},
  { 'text' => 'Friends s01e01', 'description' => 'tv episodes', 'weight' => 0.5},
  { 'text' => 'Scary Movie 3', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'The Thing movie', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'Ocean 11', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'Grudge', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'The american history X', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'The american history X', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'How I Learned to Stop Worrying and Love the Bomb', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'How I Learned to Stop Worrying and Love the Bomb', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'Too fast and furious ', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'King Arthur', 'description' => 'movie', 'weight' => 0.8},
  { 'text' => 'Friends', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'The Office', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'The Office tv', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'south park', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'Vampire Diaries', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'Agents of S.H.I.E.L.D', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'How I Met Your Mother', 'description' => 'tv series', 'weight' => 2},
  { 'text' => 'Almost Human', 'description' => 'tv series', 'weight' => 2},
]

for phraseHash in phrases
  p = Phrase.find_by_text(phraseHash['text'])
  if p == nil
    Phrase.create phraseHash
  end
end
