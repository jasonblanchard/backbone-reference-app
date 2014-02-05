#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Bookstore =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  initialize: ->
    @books= new Bookstore.Collections.BooksCollection
    @books.fetch()
    @booksView = new Bookstore.Views.Books({collection: @books})
    @booksView.render()
    $('#app').append(@booksView.el);


$(document).ready ->
  Bookstore.initialize()
