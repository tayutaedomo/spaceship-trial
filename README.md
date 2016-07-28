# spaceship-trial
Try [fastlane/spaceship](https://github.com/fastlane/fastlane/tree/master/spaceship).


# Setup
This requires you bundler.

```
$ git clone git@github.com:tayutaedomo/spaceship-trial.git
$ cd spaceship-trial
$ bundle install
```


# Scripts
## bin/login.rb
```
$ export SPACESHIP_MAIL=<your email of apple developer account>
$ export SPACESHIP_PASS=<your password>
$ bundle exec ruby bin/login.rb
```

See Also: https://github.com/fastlane/fastlane/blob/master/spaceship/lib/spaceship/client.rb#L209  
You can use keychain entry if you registered email and password.

