app.controller 'homeController', ($scope, postService, $state, authenticateService, $location) ->
  $scope.posts = postService.getPosts()
  return
