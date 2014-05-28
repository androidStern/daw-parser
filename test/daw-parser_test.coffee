chai      = require('chai')
expect    = chai.expect
should    = chai.should()
sinon     = require('sinon')
sinonChai = require('sinon-chai')

chai.use(sinonChai)

daw_parser = require('../lib/daw-parser.coffee')

describe "test", ->
  beforeEach (done) ->
    @foo = "bar"
    @beverages = tea: ["chai", "matcha", "oolong"]
    done()

  it "should be done successfull", ->
    expect(@foo).to.be.a "string"
    expect(@foo).to.equal "bar"
    expect(@foo).to.have.length 3
    expect(@beverages).to.have.property("tea").with.length 3
