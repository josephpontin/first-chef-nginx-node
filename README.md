# node_cookbook

This cookbook installs nginx and starts it running. It also installs pm2 via nodejs npm.

## Chef commands
  - `chef generate cookbook <cookbook name>`
  - `chef generate teample <name_file.conf>`

## Kitchen commands

## Topics covered

- file/folder structure
- kitchen.yml
- spec folder (unit tests) -> default_spec.rb
- test folder (integration tests) -> default_test.rb
- recipe -> default.rb
- writing recipes
- using resources
  - package
  - service
  - include_recipe
  - template
  - link
- metadata file
- using supermarket
