require 'page-object'
class ColumbusStateHome
  include PageObject
  text_field(:search_phrase, name: 'q')
  def search_for(phrase)
    self.search_phrase = phrase
    @browser.send_keys :enter
  end
end