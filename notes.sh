#running rspec
#testing framework
bundle exec rspec spec/requests/static_pages_spec.rb
bundle exec rspec spec/models/user_spec.rb
#commit changes
git add .
git commit -m "Finish static pages"

#merge results changes back to main

git checkout master
git merge static-pages

#push changes to remote git
git push

git push heroku
heroku open
