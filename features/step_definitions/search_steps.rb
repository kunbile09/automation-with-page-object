require 'page-object'
include PageObject::PageFactory

When(/^I search csci-2994$/) do
  visit_page(GoogleHome) do |page|
    page.search_for 'columbus state'
  end
  sleep(5)
  on_page(GoogleSearchResults) do |page|
     page.search_results_elements[0].a.click

  end
  sleep(5)
  on_page(ColumbusStateHome) do |page|
    page.search_for 'CSCI-2994'
  end
  sleep(5)
  on_page(ColumbusStateSearch) do |page|
    page.search_result_elements[0].tbody.tr.tds[1].div.a.click
  end
end

Then(/^I should see csci-2994 details$/) do
sleep(5)
on_page(ColumbusStateSearchResult) do |page|
  @browser.windows.last.use
  expect(page.search_result_element.ps[4].text).to eq "None"
end
  sleep(5)
on_page(ColumbusStateSearchResult) do |page|
  @browser.windows.last.use
  expect(page.search_result_element.ps[7].a.text).to eq "View required and optional textbooks for CSCI2994."
end

end