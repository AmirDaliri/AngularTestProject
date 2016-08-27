angular.module('myApp').factory 'authenticateService', ($rootScope, sessionService, $location) ->
  {
    login: (user) ->
      sessionService.set user
      return
    logout: ->
      sessionService.destroy()
      return
    isLogged: ->
      if sessionService.get()
        true
      else
        false

  }
