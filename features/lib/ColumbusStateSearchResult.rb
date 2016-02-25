require 'page-object'
class ColumbusStateSearchResult
  include PageObject
  div(:search_result, id: 'course-info')
end