# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gif_hashes = [
{ :url => "http://24.media.tumblr.com/tumblr_m3twn1i0l11rpmph5o1_500.gif", :note => "how I felt the first week of Ruby class" },
{ :url => "http://25.media.tumblr.com/tumblr_mbq7csf16n1r5yc5to1_500.gif", :note => "not convinced this is a real dog" },
{ :url => "http://www.yourdogplus.com/wp-content/uploads/2013/03/cute-dog-gif-learing-from-lady.gif", :note => "Lenox and I...if i wore heels more."},
{ :url => "http://25.media.tumblr.com/tumblr_m9kzjsc8RT1rpzjbco1_400.gif", :note => "i don't even know..." }
]

Gif.destroy_all
gif_hashes.each do |g_hash|
  g = Gif.new
  g.url = g_hash[:url]
  g.note = g_hash[:note]
  g.save
end

puts "There are now #{Gif.count} rows in the gif table."
