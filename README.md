# dummy response adapter for ember-auth

[![Build Status](https://secure.travis-ci.org/heartsentwined/ember-auth-response-dummy.png)](http://travis-ci.org/heartsentwined/ember-auth-response-dummy)

A response adapter that does nothing - designed for unit tests.

## Config

```coffeescript
App.Auth = Em.Auth.extend
  response: 'dummy'
```
