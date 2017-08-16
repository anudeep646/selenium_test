[![Build Status](https://travis-ci.org/anudeep646/selenium_test.svg?branch=master)](https://travis-ci.org/anudeep646/selenium_test)

# This is a selenium test case wriiten in ruby and tested through chrome browser using selenium server on Docker container

Test scenario:

Open Chrome
Navigate to https://www.walmart.com/
Check for title


If you want to execute on your local environment make sure these dependencies are installed:

Ruby
Docker
Install the following gems: selenium-webdriver and rspec 
sudo gem install selenium-webdriver rspec


Run the Docker selenium image:

docker pull selenium/standalone-chrome
docker run -d -p 4444:4444 selenium/standalone-chrome


Running your test
ruby ruby_test.rb

This script checks the title of the website. I have included a function to generate a screenshot(commented) when the browser test is run because when you run this docker container you can't see the browser.