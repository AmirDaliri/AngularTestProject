angular.module('myApp').controller 'postController', ($scope, postService, $stateParams, authenticateService, $location) ->
  posts = postService.getPosts()
  $scope.selectedPost = {}
  i = 0
  while i < posts.length
    if posts[i].id == $stateParams.id
      $scope.selectedPost = posts[i]
    i++
  $scope.showCommentInsertionPart = true
  $scope.showNoCommentInsertionPart = false
  $scope.showCommentsPart = true
  $scope.showNoCommentsPart = false

  $scope.displayCommentInsertion = ->
    $scope.$watch authenticateService.isLogged, (value, oldValue) ->
      if !value and oldValue or !value
        $location.path 'login'
      if value
        if $('#insertComment').hasClass('noDisplay')
          $('#insertComment').addClass 'display'
          $('#insertComment').removeClass 'noDisplay'
          $scope.showCommentInsertionPart = false
          $scope.showNoCommentInsertionPart = true
        else
          $('#insertComment').addClass 'noDisplay'
          $('#insertComment').removeClass 'display'
          $scope.showCommentInsertionPart = true
          $scope.showNoCommentInsertionPart = false
      return
    return

  $scope.displayComments = ->
    if $('#commentsPart').hasClass('noDisplay')
      $('#commentsPart').addClass 'display'
      $('#commentsPart').removeClass 'noDisplay'
      $scope.showCommentsPart = false
      $scope.showNoCommentsPart = true
    else
      $('#commentsPart').addClass 'noDisplay'
      $('#commentsPart').removeClass 'display'
      $scope.showCommentsPart = true
      $scope.showNoCommentsPart = false
    return

  return
