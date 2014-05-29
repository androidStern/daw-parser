var ableton, child, readStream, test, xml, xmlStream;

ableton = "/Users/andrewstern/Music_Dev/Daw/ableton/RheyneJammer Project/MySong.xml";

test = "/Users/andrewstern/Test Project/Test.xml";

child = require("child_process");

readStream = require('fs').createReadStream(test);

xml = require('xml-stream');

xmlStream = new xml(readStream);

xmlStream.on("error", function(err) {
  return console.log(err);
});

xmlStream.on("updateElement: AudioTrack", function(a) {
  return console.log(a);
});

xmlStream.on("updateElement: MidiTrack", function(d) {
  return console.log(d);
});

/*
//@ sourceMappingURL=daw-parser.js.map
*/