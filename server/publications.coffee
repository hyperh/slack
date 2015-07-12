Meteor.publish "messages", 
  -> Messages.find()

Meteor.publish "allUsernames",
  -> Meteor.users.find {}, 
      fields:
        "username": 1
        "services.github.username": 1