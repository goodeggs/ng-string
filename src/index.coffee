S = require 'string'
app = angular.module 'string', []

app.factory 'string', -> S

createFilterFor = (name, returnsStringObject) ->
  filterName = S("string-#{name}").camelize().toString()
  app.filter filterName, ['string', ((S) ->
    (input, args...) ->
      out = S(input)[name](args...)
      out = out.toString() if returnsStringObject
      out
  )]

createFilterFor(name, true) for name in ['between', 'camelize', 'capitalize', 'chompLeft', 'chompRight', 'collapseWhitespace', 'dasherize', 'decodeHTMLEntities', 'escapeHTML', 'ensureLeft', 'ensureRight', 'humanize', 'left', 'pad', 'padLeft', 'padRight', 'repeat', 'replaceAll', 'right', 'slugify', 'stripPunctuation', 'stripTags', 'times',  'toCSV', 'trim', 'trimLeft', 'trimRight', 'truncate', 'underscore', 'unescapeHTML']
createFilterFor(name, false) for name in ['contains', 'count', 'endsWith', 'include', 'isAlpha', 'isAlphaNumeric', 'isEmpty', 'isLower', 'isNumeric', 'isUpper', 'lines', 'parseCSV', 'startsWith', 'toBoolean', 'toBool', 'toFloat', 'toInt', 'toInteger']
