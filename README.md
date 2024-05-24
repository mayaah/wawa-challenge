# Maya H wawa challenge

My Simple Chatroom solution. Admittedly this took me longer than 4 hours but I enjoyed learning more about Hotwire/Turbo Streams/Stimulus. If I had really limited myself to 4 hours I probably would've only gotten up to User Authentication and basic room functionality.

Also admittedly since this was my first time using Hotwire, I followed this Youtube tutorial that was very close in requirements for this assignment https://youtu.be/UvTLumcEMgU?si=NyHjaP_XN7uYgFSB There were some changes I had to do though as fixes and updates had come out since that resolved some of the issues/workarounds in the video.

I've addressed most requirements except that "Users should be able to join and leave chat rooms". I also couldn't get scroll to bottom of messages with Stimulus working. I also did not deploy to the cloud.

I used Devise for user authentication to not reinvent the wheel. Devise is used widely and has a lot of documentation. I used RSpec for testing because it's what I'm most familiar with and what is most widely used in industry. I did not have prior experience with Capybara before though so the system tests there may not quite be the best way to test things.

Tried to add some basic styling admittedly some things were hacky and duplicative but given the time I would want to make more reusable styles and make a better, more responsive layout.


### Stack
|  |  |
|--|--|
| Ruby version | 3.3.0  |
| Rails version | 7.1.3.3  |
| Database | sqlite3  |
| Testing Framework | RSpec  |

### Gem Dependencies
* `rspec_rails` for testing
* `factory_bot_rails` for easier test data creation
* `faker` for easy fake model fields for tests
* `devise` for user authentication
* `tailwindcss-rails` for styling

## Installation
```sh
$ git clone git@github.com:mayaah/wawa-challenge.git
$ cd wawa-challenge
$ bundle install
$ rails db:setup # to create db and migrate
# in a separate window for Turbo Stream broadcasting
$ redis-server
```

### Run the app
```
$ rails s
```

### Run tests
```
$ rspec

