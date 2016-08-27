angular.module('myApp').controller 'loginController', ($scope, $state, $location, authenticateService, sessionService) ->

  $scope.login = ->
    if $scope.emailModel == 'geek' and $scope.passModel == 'password'
      authenticateService.login $scope.emailModel
      $location.path 'home'
    return

  return
