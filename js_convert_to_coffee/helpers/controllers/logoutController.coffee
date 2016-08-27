angular.module('myApp').controller 'logoutController', ($scope, $state, $location, authenticateService, sessionService) ->

  $scope.logout = ->
    authenticateService.logout()
    $location.path 'home'
    return

  return
