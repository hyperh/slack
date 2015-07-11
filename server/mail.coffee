Meteor.startup ->
  smtp =
    username: "nunavutaccountant2@gmail.com"
    password: "vC_0p2kR1Kh5Pg4DCrUADA"
    server: "smtp.mandrillapp.com"
    port: 587
  process.env.MAIL_URL = 'smtp://' + encodeURIComponent(smtp.username) + ':' + encodeURIComponent(smtp.password) + '@' + encodeURIComponent(smtp.server) + ':' + smtp.port