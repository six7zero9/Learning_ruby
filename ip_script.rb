require 'mysql'
require 'Resolv'

def get_url(raw_url)
  if raw_url.match(/^www./)
    url = raw_url
  elsif raw_url.match(/^https?:\/\/(www\.)?/)
    url = raw_url.sub(/^https?:\/\/(www\.)?/,'www.')
  elsif raw_url.match(/^[^(www\.)]/)
    url = raw_url.insert(0, "www.")
  end
end

begin
  con = Mysql.new '127.0.0.1', 'root', '!Soccer09', 'ip_db'
  rs = con.query "SELECT links FROM urls"
  i = 0

  rs.each do |link|
    i += 1
    url = get_url(link.join(""))
    ip_array = Resolv.getaddresses(url)

    if ip_string = ip_array.join(', ')
      con.query "UPDATE urls SET ip_address = '#{ip_string}' WHERE id = #{i}"
      puts "row#{i} updatd: ip_address = #{ip_string}"
    else
     puts "row#{i} failed to update."
    end
  end

rescue Mysql::Error => err
  puts err.errno
  puts err.error
ensure
  con.close if con
end
