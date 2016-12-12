class Enviar < ApplicationRecord

		Time::DATE_FORMATS[:default] = "%d/%m/%Y - %I:%M"

def self.search(search)
    search = I18n.transliterate(search).gsub(' ', '').downcase;
    res = Array.new
    all.each do |a|
    fullname = I18n.transliterate(a.destinatario)
    fullname = fullname.gsub(' ', '').downcase
    if fullname.include? search
       puts fullname+" "+search
       res << a
    end
    end
    res.sort!{|a, b| a.destinatario <=> b.destinatario}
end

end
