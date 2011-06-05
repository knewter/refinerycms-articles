Given /^I have no articles$/ do
  Article.delete_all
end

Given /^I (only )?have articles titled "?([^\"]*)"?$/ do |only, titles|
  Article.delete_all if only
  titles.split(', ').each do |title|
    Article.create(:title => title)
  end
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Article.count.should == count.to_i
end
