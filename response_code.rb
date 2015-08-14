require 'mysql'
require 'net/http'
# require 'Resolv'


# def get_ip(ip_address)
#   begin
#
#     @ip = Resolv.getaddress(ip_address.sub(/^https?\:\/\//,''))
#
#   rescue Resolv::ResolvError => e
#     puts e
#   end
# end

begin
con = Mysql.new '127.0.0.1', 'root', '', 'test'
rs = con.query "SELECT links FROM urls"
i = 0

rs.each do |link|
  i += 1
  url = link.join("")

  begin

  puts url.insert(0, "http://") unless(url.match(/^http:\/\//))
  puts res = Net::HTTP.get_response(URI.parse(url))
  # get_ip(link.join(""))

  if res.code.match(/(2|3)\d{2}/)
    con.query "UPDATE urls SET response_code = #{res.code}, link_status = 'good' WHERE id = #{i}"
    puts "response_code = #{res.code}\nlink_status = good\n\n"
  elsif res.code.match(/(1|4|5|6)\d{2}/)
    con.query "UPDATE urls SET response_code = #{res.code}, link_status = 'n/a' WHERE id = #{i}"
    puts "response_code = #{res.code}\nlink_status = 'n/a'\n\n"
  else
    puts url
    con.query "UPDATE urls SET response_code = NULL, link_status = 'n/a' WHERE id = #{i}"
    puts "response_code = NULL\nlink_status = n/a\n\n"
  end

  rescue SocketError => e
    puts url
    puts e
    con.query "UPDATE urls SET response_code = NULL, link_status = 'n/a' WHERE id = #{i}"
    puts "response_code = NULL\nlink_status = n/a\n\n"
  end

end

rescue Mysql::Error => er
  puts er.errno
  puts er.error

ensure
  con.close if con
end
