Meteor.startup ->

  Meteor.users.remove({})
  
  Accounts.createUser
    username: "testAccount"
    emails: "test@test.com"
    password: "testpassword"

  Factory.define "message", Messages, {
    text: -> Fake.sentence()
    user: Meteor.users.findOne()._id
    timestamp: Date.now()
    channel: "general"
  }

  Messages.remove({})

  if Messages.find({}).count() is 0
    _(10).times (n) ->
      Factory.create "message"

  Channels.remove({})
  Channels.insert 
    name: "general"
  Channels.insert
    name: "random"