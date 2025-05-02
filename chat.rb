# render method
def render_ascii_chat
  File.readlines("chat.txt") do |line|
    line
  end
end

# greeting
puts "Welcome to Chat with Auntie!"  

# display header
puts render_ascii_chat

# hug
puts "Take a breath."
puts "Let Auntie's words wrap around you like a warm hug."
puts "You are enough. AND!!! You are never alone."

# display chat
def render_ascii_user
  File.readlines("usertalk.txt") do |line|
    line
  end
end

puts render_ascii_user

# --- Step 1: Feeling ---
puts "\nHow are you feeling today? Choose from:"
puts "1. Stressed"
puts "2. Hopeful"
puts "3. Doubtful"

print "\nEnter the number of your feeling: "
choice = gets.chomp.to_i

feelings = {
  1 => "stressed",
  2 => "hopeful",
  3 => "doubtful"
}

selected_feeling = feelings[choice]

# --- Step 2: Category ---
puts "\nWhich area does this situation relate to? Choose from:"
puts "1. Work/Career"
puts "2. School/Learning"
puts "3. Family/Relationships"
puts "4. Health/Wellness"
puts "5. Life Changes"
puts "6. Faith/Mindset"

print "\nEnter the number of your category: "
cat_choice = gets.chomp.to_i

categories = {
  1 => "work",
  2 => "school",
  3 => "family",
  4 => "health",
  5 => "life_changes",
  6 => "faith"
}

selected_category = categories[cat_choice]

# --- Step 3: Situation (for empathy, not keyword matching now) ---
puts "\nWhat happened? (Describe your situation briefly.)"
situation = gets.chomp

# --- Step 4: Encouragements by feeling-category pair ---
feeling_category_encouragements = {

  # STRESSED
  "stressed_work" => "Work can be stressful, but remember — you are capable and your efforts are making a difference.",
  "stressed_school" => "School stress is real, but you're learning and growing with each challenge.",
  "stressed_family" => "Family stress happens, but your love and patience will carry you through.",
  "stressed_health" => "Health concerns are heavy, but taking small steps is powerful progress.",
  "stressed_life_changes" => "Change can feel overwhelming, but you are adapting bravely.",
  "stressed_faith" => "Even in spiritual stress, your faith journey is unfolding with purpose.",

  # HOPEFUL
  "hopeful_work" => "Hope brings new energy to your work. Keep believing in what you’re building.",
  "hopeful_school" => "Hope fuels learning. Trust that your dedication will open new doors.",
  "hopeful_family" => "Your hope for your family is already making a difference.",
  "hopeful_health" => "Hope is healing. Trust the process, even in small victories.",
  "hopeful_life_changes" => "Your hopeful heart will lead you through this season of change.",
  "hopeful_faith" => "Hope is a light on your faith journey. Keep trusting the path ahead.",

  # DOUBTFUL
  "doubtful_work" => "Doubt shows you care about doing well. Trust your skills and past successes.",
  "doubtful_school" => "It’s okay to question yourself sometimes. Remember how far you’ve come.",
  "doubtful_family" => "Family doubts are natural. Keep leading with love and patience.",
  "doubtful_health" => "Doubt can be heavy, but every effort you make toward health matters.",
  "doubtful_life_changes" => "Doubt is common during change. You are stronger than uncertainty.",
  "doubtful_faith" => "Even in doubt, your faith can grow. It’s okay to question — keep seeking."
}

# --- Step 5: Find matching encouragement ---
pair_key = "#{selected_feeling}_#{selected_category}"

encouragement = feeling_category_encouragements[pair_key]

# display chat
def render_ascii_aunt
  File.readlines("aunttalk.txt") do |line|
    line
  end
end

puts render_ascii_aunt

puts "\nHere's Auntie's encouragement for you:\n\n"
if encouragement
  puts "\nThank you for sharing."
  puts "- #{encouragement}"
else
  puts "- No matter the situation, remember — you are strong, capable, and not alone. Keep believing in yourself!"
end

puts "\nYou've got this! Come back any time you need to chat."
