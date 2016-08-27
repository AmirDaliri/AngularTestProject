angular.module('myApp').factory 'sessionService', ($rootScope) ->
  currentUser = undefined
  {
    set: (user) ->
      currentUser = user
    get: ->
      currentUser
    destroy: ->
      currentUser = null

  }
