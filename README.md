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
- https://github.com/fastlane/fastlane/tree/master/credentials_manager#using-environment-variables

```
$ export FASTLANE_USER=<your email of apple developer account>
$ export FASTLANE_PASSWORD=<your password>
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


## app_create.rb
```
$ bundle exec ruby bin/app_create.rb "com.example.testapp" "Test App"
<Spaceship::Portal::App 
        app_id="WMFNB5768H",
        name="Test App",
        platform="ios",
        prefix="2427AM2VGT",
        bundle_id="com.example.testapp",
        is_wildcard=false,
        features={"push"=>true, "inAppPurchase"=>true, "gameCenter"=>true, "passbook"=>false, "dataProtection"=>"", "homeKit"=>false, "cloudKitVersion"=>1, "iCloud"=>false, "LPLF93JG7M"=>false, "IAD53UNK2F"=>false, "V66P55NK2I"=>false, "SKC3T5S89Y"=>false, "APG3427HIY"=>false, "HK421J6T7P"=>false, "WC421J6T7P"=>false},
        enabled_features=["gameCenter", "inAppPurchase", "push"],
        dev_push_enabled=false,
        prod_push_enabled=false,
        app_groups_count=nil,
        cloud_containers_count=nil,
        identifiers_count=nil>
```


## provisioning_profile_find.rb
```
$ bundle exec ruby bin/provisioning_profile_find.rb "com.example.testapp"
"Bundle ID: com.example.testapp"
[<Spaceship::Portal::ProvisioningProfile::AppStore 
        id="",
        uuid="",
        expires=,
        distribution_method="store",
        name="",
        status="Active",
        type="iOS Distribution",
        version="2",
        platform="ios",
        managing_app=nil,
        app=<Spaceship::Portal::App
                app_id="", 
                name="",
                platform="ios",
                prefix="",
                bundle_id="com.example.testapp",
                is_wildcard=false,
                features={"push"=>false, "iCloud"=>false, "inAppPurchase"=>true, "gameCenter"=>true, "LPLF93JG7M"=>false, "passbook"=>false, "IAD53UNK2F"=>false, "V66P55NK2I"=>false, "dataProtection"=>"", "SKC3T5S89Y"=>false, "APG3427HIY"=>false, "HK421J6T7P"=>false, "homeKit"=>false, "WC421J6T7P"=>false, "cloudKitVersion"=>1},
                enabled_features=["gameCenter", "inAppPurchase"],
                dev_push_enabled=false,
                prod_push_enabled=false,
                app_groups_count=nil,
                cloud_containers_count=nil,
                identifiers_count=nil>,
        certificates=[<Spaceship::Portal::Certificate::Production
                id="",
                name="iOS Distribution",
                status=nil,
                created=nil,
                expires=,
                owner_type="team",
                owner_name=nil,
                owner_id=nil,
                type_display_id="", 
                can_download=nil>],
        devices=[]>]
```


## provisioning_profile_download.rb
```
$ bundle exec ruby bin/provisioning_profile_download.rb "com.example.testapp"
"Bundle ID: com.example.testapp"

$ ls download.mobileprovision
download.mobileprovision
```


## provisioning_profile_create.rb
```
$ bundle exec ruby bin/provisioning_profile_create.rb "adhoc" "com.example.testapp" "XXXXXXXXXX" "Test App"
"Bundle ID: com.example.testapp"
"Certificate ID: XXXXXXXXXX"
<Spaceship::Portal::ProvisioningProfile::AdHoc
        ...>
```


## certificate_find_all.rb
```
$ bundle exec ruby bin/certificate_find_all.rb
[<Spaceship::Portal::Certificate::Production
  ...]
```


## certificate_find.rb
```
$ bundle exec ruby bin/certificate_find.rb "XXXXXXXXXX"
"Certificate ID: XXXXXXXXXX"
<Spaceship::Portal::Certificate::Production 
        id="XXXXXXXXXX",
        name="",
        status="Issued",
        created=,
        expires=,
        owner_type="team",
        owner_name="",
        owner_id="",
        type_display_id="R58UK2EWSO",
        can_download=true>
```


## certificate_download.rb
```
$ bundle exec ruby bin/certificate_download.rb "XXXXXXXXXX"
"Certificate ID: XXXXXXXXXX"

$ ls download.cer
download.cer
```

