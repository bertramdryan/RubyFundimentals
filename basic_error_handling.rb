begin
    puts nil + 10
rescue StandardError => exception
    puts "Error occurred: #{exception}"
end
