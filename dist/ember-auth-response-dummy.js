// Generated by EmberScript 0.0.7
var get$ = Ember.get;
Em.onLoad('Ember.Application', function (application) {
  application.initializer({
    name: 'ember-auth.response.dummy',
    before: 'ember-auth-load',
    initialize: function (container, app) {
      app.register('authResponse:dummy', get$(get$(Em, 'Auth'), 'DummyAuthResponse'), { singleton: true });
      return app.inject('authResponse:dummy', 'auth', 'auth:main');
    }
  });
  return application.initializer({
    name: 'ember-auth.response.dummy-load',
    after: 'ember-auth-load',
    initialize: function (container, app) {
      return container.lookup('authResponse:dummy');
    }
  });
});// Generated by EmberScript 0.0.7
var get$ = Ember.get;
var set$ = Ember.set;
set$(get$(Em, 'Auth'), 'DummyAuthResponse', get$(get$(Em, 'Auth'), 'AuthResponse').extend({
  canonicalize: function (response) {
    return JSON.parse(response);
  }
}));