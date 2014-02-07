class Bookstore.Models.Book extends Backbone.Model
  urlRoot: '/books'
  defaults: {
    title: '',
    summary: ''
  }

class Bookstore.Collections.BooksCollection extends Backbone.Collection
  model: Bookstore.Models.Book

  url: '/books'

  initialize: ->
    @.on('remove', this.hideModel);

  comparator: (model) ->
    return -model.get('id')

  hideModel: (model) ->
    model.trigger('hide')
