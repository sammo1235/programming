def remove_url_anchor(url)
  url.split("#").shift
end

remove_url_anchor(www.codewars.co.uk#about)