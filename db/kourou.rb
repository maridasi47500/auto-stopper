#j Fetch and parse HTML documen``t
kourou=City.find_or_create_by(name: "Kourou")
Post.where(city_id: kourou.id).destroy_all
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
       `rm index.html; curl https://www.ville-kourou.fr/agenda/ --output index.html;`
doc = Nokogiri::HTML(File.read("./index.html"))
@doc = Nokogiri::HTML(File.read("./index.html"))
 p "cool"

 # Search for nodes by css
 p doc.css('.more-agenda li').length
   p "items"
   doc.css('.more-agenda li').each do |link|
     #puts link.content
     p "www.saintlaurentdumaroni.fr#{URI.parse(escape(link.css("h2 a")[0].attributes['href'].value))}"
        p "ok"
        `rm myfile.html; curl "#{escape(link.css("h2 a")[0].attributes['href'].value)}" --output myfile.html;`
           x="./myfile.html"
             doc2 = Nokogiri::HTML(File.read(x))
               k=Post.create do |h|
                 h.image=doc2.css(".content.single img.size-full")[0] ? doc2.css(".content.single img.size-full")[0].attributes["src"].value : ""
                 h.title=doc2.css(".content.single h2")[0].inner_html
                 h.content=doc2.css(".content.single *")[1..-1].map{|b|b.inner_html}.join("")
                 madate=doc2.css(".content.single div p")[1].inner_html.split(":")[1].strip.squish
                     frm=I18n.t("date.month_names",locale: :fr)
                         enm=I18n.t("date.month_names",locale: :en)
                             frm.each_with_index do |i,j|
                                     next if !i
                                           madate=madate.gsub(i,enm[j])
                                               end
                                                               h.date=madate

                                                                   h.city_id=kourou.id
                                                                     end
                                                                       p k
                                                                         end
