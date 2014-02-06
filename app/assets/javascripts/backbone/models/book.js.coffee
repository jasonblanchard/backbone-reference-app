class Bookstore.Models.Book extends Backbone.Model
  urlRoot: '/books'

class Bookstore.Collections.BooksCollection extends Backbone.Collection
  model: Bookstore.Models.Book
  
  url: '/books'

  comparator: (model) ->
    return -model.get('id')
