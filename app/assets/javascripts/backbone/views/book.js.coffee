class Bookstore.Views.Book extends Backbone.View
  className: 'book'
  template: _.template('<h2><%= model.escape("title") %></h2><p><%= model.escape("summary") %></p>')
  initialize: ->
    this.model.on('change', this.render, this)
  render: ->
    this.$el.html(this.template({model: this.model}))
    return this
