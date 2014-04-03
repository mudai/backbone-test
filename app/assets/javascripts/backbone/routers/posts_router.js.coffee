class App.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new App.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "hoge"     : "test"
    "new"      : "newPost"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  test: ->
    alert "test"

  newPost: ->
    @view = new App.Views.Posts.NewView(collection: @posts)
    $("#posts").html(@view.render().el)

  index: ->
    @view = new App.Views.Posts.IndexView(posts: @posts)
    $("#posts").html(@view.render().el)

  show: (id) ->
    post = @posts.get(id)

    @view = new App.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)

  edit: (id) ->
    post = @posts.get(id)

    @view = new App.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)
