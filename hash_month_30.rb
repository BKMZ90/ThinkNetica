month = { january: 31, february: 28, march: 31, april: 30, may: 31, juny:30, july:31, august:31, september: 30, octember: 31, november: 30, december: 31 }

month.each do |key, values|
		puts "#{key} = #{values}" if values == 30
end