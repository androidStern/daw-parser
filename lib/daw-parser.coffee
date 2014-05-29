ableton = "/Users/andrewstern/Music_Dev/Daw/ableton/RheyneJammer Project/MySong.xml"

test = "/Users/andrewstern/Test Project/Test.xml"

child = require "child_process"

# child.exec "gzip -cd /Users/andrewstern/Test\\ Project/Test.als"

readStream = require('fs').createReadStream(test)

xml = require('xml-stream')

xmlStream = new xml(readStream)

# xmlStream.on "data", (d)-> console.log d

xmlStream.on "error", (err)->
  console.log err


x = ["Name", "EffectiveName", "$", "Value"]


xmlStream.on "updateElement: AudioTrack", (a)->
  track_name = a["Name"]["EffectiveName"]["$"]["Value"]
  console.log "track_name is: ", track_name
  plugins = a["DeviceChain"]["DeviceChain"]["Devices"]
  # ["PluginDevice"]["PluginDesc"]["VstPluginInfo"]["PlugName"]["$"]["Value"]
  console.log "plugin_name: ", plugins

# xmlStream.on "updateElement: MidiTrack", (d)-> console.log d
