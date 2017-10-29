ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

puts "\nThere are #{ballots.count} voting ballots."

politician = Hash.new(0)
ballots.each do |ballot|
  ballot.each do |rank,name|
    if rank == 1
      politician[name] += 3
    elsif rank == 2
      politician[name] += 2
    else
      politician[name] += 1
    end
  end
end
puts "\nHere are the tally for each politician."
p politician

# tally up and determine the winner
winner = politician.max_by do |candidate, points|
  points
end

puts "\nThe winner is #{ winner[0] } with #{ winner[1]} points"
