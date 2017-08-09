# codecov_reporter plugin

### [![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-codecov_reporter) [![Build Status](https://travis-ci.org/BinaryBeard/fastlane-plugin-codecov_reporter.svg?branch=master)](https://travis-ci.org/BinaryBeard/fastlane-plugin-codecov_reporter)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-codecov_reporter`, add it to your project by running:

```bash
fastlane add_plugin codecov_reporter
```

## About codecov_reporter

This plugin will upload coverage reports to Codecov.io

## Reference

### Minimum configuration

```ruby
codecov_reporter
```

### Full Configuration

```ruby
codecov_reporter(
    token: "CODECOV_TOKEN"
)
```

|Parameter|Required|Description|
|---------|--------|-----------|
|`token`|false|Codecov.io will provide a token for private repositories. Provide this token to ensure coverage is properly reported.|

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
