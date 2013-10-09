Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.response.dummy'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authResponse:dummy', Em.Auth.DummyAuthResponse
