
module RegexpChecker
  def self.checker
    print 'Text?: '
    text = gets&.chomp

    retry_count = 0
    begin
      print 'Pattern?: '
      pattern = gets.chomp
      regexp = Regexp.new(pattern)
    rescue RegexpError => e
      retry_count += 1
      if retry_count <= 2
        puts "Invalid pattern: #{e.message}"
        retry
      end
      return
    end

    matches = text.scan(regexp)
    if !matches.empty?
      puts "Matched: #{matches.join(', ')}"
    else
      puts 'Nothing matched.'
    end
  end
end
