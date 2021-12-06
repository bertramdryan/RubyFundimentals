def error_logger(e)
    File.open("error_log.txt", "a") do |file|
        file.puts e
    end
end

begin
    puts 9/0
rescue StandardError => exception
    error_logger("Error: #{exception} at #{Time.now}")
end