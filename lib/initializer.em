Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.response.dummy'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authResponse:dummy', Em.Auth.DummyAuthResponse, \
      { singleton: true }
      app.inject 'authResponse:dummy', 'auth', 'auth:main'

  application.initializer
    name: 'ember-auth.response.dummy-load'
    after: 'ember-auth-load'

    initialize: (container, app) ->
      # force init() call wth an eager-load
      container.lookup 'authResponse:dummy'
