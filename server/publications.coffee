Meteor.publish "messages", 
  (channel) -> Messages.find({channel: channel})

Meteor.publish "allUsernames",
  -> Meteor.users.find {}, 
      fields:
        "username": 1
        "services.github.username": 1

Meteor.publish "channels",
  -> Channels.find()