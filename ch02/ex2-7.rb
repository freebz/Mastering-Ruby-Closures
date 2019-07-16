# Block Pattern #2: Managing Resources

f = File.open('Leo Tolstoy - War and Peace.txt', 'w')
f << "Well, Prince, so Genoa and Lucca"
f << " are now just family estates of the Buonapartes."
f.close


File.open('Leo Tolstoy - War and Peace.txt', 'w') do |f|
  f << "Well, Prince, so Genoa and Lucca"
  f << " are now just family estates of the Buonapartes."
end
