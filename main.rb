require 'shodanz'


shodan = Shodanz.client.new(key: 'shodan KEY')


results = shodan.host_search('apache')


puts "Results Found: #{results['total']}"

results['matches'].each do |result|

  puts "IP: #{result['ip_str']}"

  puts result['data'] + "\n"

end
