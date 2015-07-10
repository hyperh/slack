Meteor.startup ->
  Factory.define "message", Messages, {
    text: ->
      Fake.sentence()
  }

  # Messages.remove({})

  if Messages.find({}).count() is 0
    _(10).times (n) ->
      Factory.create "message"