Meteor.call "newMessage",
  text: $(".input-box_text").val()
  channel: Session.get "channel"