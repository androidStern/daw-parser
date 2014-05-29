_ = require "lodash"
xml = require('xml-stream')




testpath = process.cwd().split("/")[..-1].join("/") + "/Test Project/Test.xml"


readStream = require('fs').createReadStream(testpath)

xmlStream = new xml(readStream)

xmlStream.collect('PluginDevice')

xmlStream.on "error", (err)-> console.log err

xmlStream.on "updateElement: AudioTrack", (a)->
  track_name = a["Name"]["EffectiveName"]["$"]["Value"]
  console.log "track_name is: ", track_name
  _plugins = a["DeviceChain"]["DeviceChain"]["Devices"]["PluginDevice"]
  plugins = _.map _plugins, (p)-> p["PluginDesc"]["VstPluginInfo"]["PlugName"]["$"]["Value"]
  console.log "plugins: ", plugins
