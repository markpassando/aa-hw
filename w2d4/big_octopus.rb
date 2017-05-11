require 'byebug'

fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish_array)
  fish_array.each_with_index do |string, i|
    return fish_array[i] if fish_array.all? { |other_string| string.length >= other_string.length}
  end
end

def dominant_octopus(fish_array)
  merge_sort(fish_array).last
end

def merge_sort(fish_array)
  return [] if fish_array.empty?
  return fish_array if fish_array.length == 1
  half = fish_array.length / 2

  left_side = fish_array.take(half)
  right_side = fish_array.drop(half)

  left_split = merge_sort(left_side)
  right_split = merge_sort(right_side)

  #quitdebugger
  merge(left_split, right_split)
end

def merge(left, right)
  merged = []
  #debugger
  until left.empty? || right.empty?
    compare = left.first.length <=> right.first.length
    if compare == -1
        merged << left.shift
    elsif compare == 0
      merged << left.shift
    elsif compare == 1
      merged << right.shift
    end
  end

  merged.concat(left)
  merged.concat(right)
end

def clever_octopus(fish_array)
  longest_fish = ""
  fish_array.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

p sluggish_octopus(fish_array)
p dominant_octopus(fish_array)
p clever_octopus(fish_array)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |dir, i|
    return i if dir == direction
  end
  false
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]

end
p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
