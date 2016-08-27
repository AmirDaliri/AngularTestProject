angular.module('myApp').controller 'mainController', [
  '$scope'
  '$state'
  '$location'
  'authenticateService'
  'sessionService'
  ($scope, $state, $location, authenticateService, sessionService) ->
    $scope.tabs = [
      {
        heading: 'home'
        route: 'home'
        active: true
        isVisible: 'false'
      }
      {
        heading: 'login'
        route: 'login'
        active: false
        isVisible: 'false'
      }
      {
        heading: 'logout'
        route: 'logout'
        active: false
        isVisible: 'false'
      }
    ]

    $scope.tabSelected = (route) ->
      $state.go route
      return

    $scope.showMenue = (tab) ->
      if authenticateService.isLogged() == true and tab.heading == 'login'
        false
      else if authenticateService.isLogged() == false and tab.heading == 'logout'
        false
      else if tab.heading == 'home'
        true
      else
        true

    return
]
