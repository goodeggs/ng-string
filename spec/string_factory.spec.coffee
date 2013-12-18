describe 'string factory', ->
  it 'returns an instance of the string helper', (done) ->
    module 'string'
    inject (string) ->
      expect(string('Your name is JP').right(2).s).to.equal 'JP'
      done()
