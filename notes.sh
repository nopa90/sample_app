#running rspec
#testing framework
bundle exec rspec spec/requests/static_pages_spec.rb

#commit changes
git add .
git commit -m "Finish static pages"

#merge results changes back to main

git checkout master
git merge static-pages
