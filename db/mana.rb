#j Fetch and parse HTML documen``t
mana=City.find_or_create_by(name: "Mana")
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
`rm index.html; curl http://www.mairie-mana.fr/actualites/ --output index.html;`
doc = Nokogiri::HTML(File.read("./index.html"))
@doc = Nokogiri::HTML(File.read("./index.html"))
 p "cool"

 # Search for nodes by css
  p doc.css('.section-features .section-feature a').length
   p "items"
   doc.css('.section-features .section-feature a').each do |link|
     #puts link.content
       p "www.saintlaurentdumaroni.fr#{URI.parse(escape(link.attributes['href'].value))}"
        p "ok"
         `rm myfile.html; curl "#{escape(link.attributes['href'].value)}" --output myfile.html;`
           x="./myfile.html"
             doc2 = Nokogiri::HTML(File.read(x))
               k=Post.create do |h|
                   h.image=doc2.css(".post-image img")[0] ? doc2.css(".post-image img")[0].attributes["src"].value : ""
                       h.title=doc2.css("h1")[0].inner_html
                           h.content=doc2.css(".content .post p").map{|b|b.inner_html}.join("")
                               madate=doc2.css(".feature-event-date").inner_html
                                   frm=I18n.t("date.month_names",locale: :fr)
                                       enm=I18n.t("date.month_names",locale: :en)
                                           frm.each_with_index do |i,j|
                                                 next if !i
                                                       madate=madate.gsub(i,enm[j])
                                                           end
                                                               h.date=madate

                                                                   h.city_id=mana.id
                                                                     end
                                                                       p k
                                                                         end
