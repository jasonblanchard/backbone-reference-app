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
    @bookForm = new Bookstore.Views.BookForm({model: new Bookstore.Models.Book, collection: @books})
    @bookForm.render()
    $('#app').append(@booksView.el);
    $('#app').prepend(@bookForm.el);


$(document).ready ->
  Bookstore.initialize()
