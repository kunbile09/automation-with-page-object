require 'page-object'
class GoogleSearchResults
  include PageObject
  divs(:search_results, class: 'g')
end