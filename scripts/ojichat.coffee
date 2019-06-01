module.exports = (robot) ->
  robot.respond /oji (.*)/, (msg) ->

    util = require('util')
    #console.log(util.inspect(msg))
    #name = msg.message.user.real_name
    name = msg.match[1]

    @exec = require('child_process').exec
    command = "./bin/ojichat -p 1 #{name}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?