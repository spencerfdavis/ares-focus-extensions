# ActiveResource Focus Extensions
  
Additional features including an API key for all requests, remove format extensions (.xml, .json) from requests, and the ability to have a loadable config file with defaults for each environment to DRY up implementation.

## Example config/sites.yml

```yaml
development:
  site: "localhost:8080"
  prefix: "/path/to/api/"
  format: :xml
  api_key: "12345678"

production:
  site: "production:8080"
  prefix: "/path/to/api/"
  format: :xml
  api_key: "12345678"
```

## Installation

Step 1: Install this gem, `ares-focus-extensions`: either add it to your `Gemfile` and `bundle install`, or simply `gem install ares-focus-extensions`
