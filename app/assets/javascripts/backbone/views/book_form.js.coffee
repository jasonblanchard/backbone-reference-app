class Bookstore.Views.BookForm extends Backbone.View
  className: 'book-form'

  template: JST['backbone/templates/book_form']

  render: ->
    @.$el.html(@.template(@.model.attributes))
    return @

  events: {
    submit: 'save'
  }

  save: (e) ->
    e.preventDefault();
    newTitle = @.$('input[name=title]').val()
    newSummary = @.$('input[name=summary]').val()
    newBook = new Bookstore.Models.Book({title: newTitle, summary: newSummary});
    newBook.save()
    @.collection.add(newBook)
    @.reset()

   reset: ->
     @.model = new Bookstore.Models.Book();
     @.render()

