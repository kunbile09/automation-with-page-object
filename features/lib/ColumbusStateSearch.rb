require 'page-object'
class ColumbusStateSearch
  include PageObject
  tables(:search_result, class: 'gsc-table-result')
end

