# Chat Bot with expanded encouragements

puts "Welcome to Chat with Auntie!"

puts "Take a breath."
puts "Let Auntie's words wrap around you like a warm hug."
puts "You are enough. AND!!! You are never alone."
puts "Whenever you need a boost, come here for a dose of comfort and encouragement."

puts "How are you feeling today?"
feeling = gets.chomp

p feeling

puts "What happened? (Describe your situation briefly.)"
situation = gets.chomp

p situation
# --- STEP 1: Extract key words from the situation ---

words = situation.downcase.scan(/\w+/)

p words

stop_words = ["i", "am", "because", "my", "the", "and", "but", "is", "was", "a", "an", "to", "of", "for", "it", "on", "in", "at", "with", "that", "this", "so"]

p stop_words
keywords = words - stop_words
p keywords
# --- STEP 2: Encouragement library ---

encouragements = {
  # Work / Career
  "deadline" => "Deadlines are tough, but you’ve shown resilience before and you’ll do it again!",
  "team" => "Every team faces challenges — your leadership makes a difference.",
  "job" => "Work can be overwhelming, but you are equipped for this season.",
  "promotion" => "Opportunities don’t always come easily — keep believing in your skills. You’ve earned your place.",
  "interview" => "Interviews can feel intimidating, but you have everything it takes to shine.",
  "boss" => "Leadership challenges grow us. Your voice and perspective matter.",
  
  # School / Learning
  "school" => "Keep learning and growing — your hard work will pay off!",
  "exam" => "Tests don’t define you. You’ve prepared — trust your knowledge.",
  "grades" => "Grades measure performance, not potential. Keep going!",
  "graduation" => "Celebrate how far you’ve come. The best is ahead!",

  # Family / Relationships
  "family" => "Family moments can stretch us, but your love and patience are powerful.",
  "parenting" => "Parenting is the hardest job with the greatest rewards. You’re doing better than you think.",
  "marriage" => "Every relationship has seasons. Keep choosing love and growth.",
  "friendship" => "Friendships evolve — stay open to both new connections and old bonds.",

  # Health / Wellness
  "health" => "Taking care of yourself is brave. You are doing your best.",
  "exercise" => "Every small step counts. Celebrate consistency over perfection.",
  "stress" => "Stress is a sign you care. Take a breath — you’ve handled harder.",
  "rest" => "Rest is productive. Your body and mind deserve it.",

  # Life Changes
  "moving" => "New spaces mean new possibilities. You’re adapting like a pro.",
  "change" => "Change feels uncertain, but growth always starts there.",
  "new job" => "New beginnings can be challenging, but you’re ready.",

  # Faith / Mindset
  "fear" => "Fear is a visitor, not a permanent resident. Courage is choosing to move anyway.",
  "doubt" => "Doubt means you’re on the edge of growth. Keep going.",
  "hope" => "Hope is your superpower. It’s stronger than circumstances."
}

# --- STEP 3: Match keywords to encouragements ---

matches = keywords.select { |word| encouragements.key?(word) }
p matches
# --- STEP 4: Output encouragements ---

puts "\nHere's some encouragement for you:"

if matches.any?
  matches.each do |word|
    puts "- #{encouragements[word]}"
  end
else
  puts "No matter the situation, remember — you are strong, capable, and not alone. Keep believing in yourself!"
end

puts "\nThank you for sharing. You've got this!"
