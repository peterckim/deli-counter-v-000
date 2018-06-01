# Write your code here.

katz_deli = []

def line(line)
  string = ""
  case line.length
  when 0
    string = " empty."
  else
    string = ": "
    line.each_with_index do |name, index|
      if index < line.length - 1
        string << "#{index + 1}. #{name} "
      else
        string << "#{index + 1}. #{name}"
      end
    end
  end
  puts "The line is currently#{string}"
end

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{line[line.length - 1]}. You are number #{line.length} in line."
end

def now_serving(line)
  if line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
    line = line.shift
    return line
  end
end
