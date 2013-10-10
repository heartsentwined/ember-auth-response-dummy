Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.response.dummy'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authResponse:dummy', Em.Auth.DummyAuthResponse, \
      { singleton: true }
      app.inject 'authResponse:dummy', 'auth', 'auth:main'
