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
## Before Execute
Set login information to environment variables.

```
$ export SPACESHIP_MAIL=<your email of apple developer account>
$ export SPACESHIP_PASS=<your password>
```


## login.rb
```
$ bundle exec ruby bin/login.rb
```

See Also: https://github.com/fastlane/fastlane/blob/master/spaceship/lib/spaceship/client.rb#L209  
You can use keychain entry if you registered email and password.


## app_find.rb
```
$ bundle exec ruby bin/app_find.rb "com.example.testapp"
"Bundle ID: com.example.testapp"
<Spaceship::Portal::App
        app_id="XXXXXXXXXX",
        name="App Name",
        platform="ios",
        prefix="XXXXXXXXXX",
        bundle_id="com.example.testapp",
        is_wildcard=false,
        features={},
        enabled_features=[],
        dev_push_enabled=nil,
        prod_push_enabled=nil,
        app_groups_count=nil,
        cloud_containers_count=nil,
        identifiers_count=nil>
```

