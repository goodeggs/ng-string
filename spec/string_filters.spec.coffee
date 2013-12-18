describe 'string filters', ->

  beforeEach module 'string'

  describe 'capitalize', ->

    it 'capitalizes a string', ->
      inject (stringCapitalizeFilter) ->
        expect(stringCapitalizeFilter('jon')).to.equal 'Jon'
        expect(stringCapitalizeFilter('JP')).to.equal 'Jp'
