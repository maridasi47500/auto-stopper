#j Fetch and parse HTML documen``t
cayenne=City.find_or_create_by(name: "Cayenne")
Post.where(city_id: cayenne.id).destroy_all
       def escape(str)
                               alpha = "a-zA-Z"
                                                                 alnum = "#{alpha}\\d"
                                                                                                               unreserved = "\\-_.!~*'()#{alnum}"
                                                                                                                                                                         reserved = ";/?:@&=+$,\\[\\]"
                                                                                                                                                                                                                                               unsafe = Regexp.new("[^#{unreserved}#{reserved}]")
                                                                                                                                                                                                                                                                                                                                 str.gsub(unsafe) do
                                                                                                                                                                                                                                                                                                                                                                                                                                       us = $&
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               tmp = ''
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           us.each_byte do |uc|
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       tmp << sprintf('%%%02X', uc)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               tmp
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               end.force_encoding(Encoding::US_ASCII)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       end
       `rm index.html; curl http://www.ville-cayenne.fr/agenda/ --output index.html;`
doc = Nokogiri::HTML(File.read("./index.html"))
@doc = Nokogiri::HTML(File.read("./index.html"))
 p "cool"

 # Search for nodes by css
 p doc.css('.content-col.left article').length
   p "items"
   doc.css('.content-col.left article').each do |link|
     #puts link.content
     p "www.saintlaurentdumaroni.fr#{URI.parse(escape(link.css("a")[0].attributes['href'].value))}"
        p "ok"
        `rm myfile.html; curl "http://www.ville-cayenne.fr#{escape(link.css("a")[0].attributes['href'].value)}" --output myfile.html;`
           x="./myfile.html"
             doc2 = Nokogiri::HTML(File.read(x))
               k=Post.create do |h|
                   h.image=doc2.css(".post img")[0] ? doc2.css(".post img")[0].attributes["src"].value : ""
                   h.title=doc2.css(".page-title")[0].inner_html
                       h.content=doc2.css(".post div")[1..-1].map{|b|b.inner_html}.join("")
                       madate=doc2.css(".meta.roboto_b span")[0].inner_html
                                                               h.date=madate

                                                                   h.city_id=cayenne.id
                                                                     end
                                                                       p k
                                                                         end
