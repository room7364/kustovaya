load 'couchlib.rb'
fields = %w(day month year invent_code model department trial_current)
File.readlines('repairs.txt').each do |line|
  words = line.split(" ")
  doc = Couch::Doc.new Hash[fields.zip(words)]
  doc.push 'repairs'
end
