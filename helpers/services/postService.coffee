angular.module('myApp').factory 'postService', ->
  { getPosts: ->
    [
      {
        id: '1'
        title: 'A.D'
        body: ''
        author: 'Amir Daliri'
      }
      {
        id: '2'
        title: 'A.S'
        body: ''
        author: 'Ashkan Hesaraki'
      }
    ]
 }
