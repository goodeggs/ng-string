# ng-string

An [angularjs](http://angularjs.org/) factory and set of filters encapsulating the awesome [string.js library](http://stringjs.com/).

Comes with a factory called `string`:
```javascript
myApp = angular.module('myapp', ['string']);

function AwesomeCtrl($scope, string) {
  string('foobar').chompLeft('foo').s; // 'bar'
}
```

... and a set of filters matching the string.js operations:
```html
{{mystring = 'this is a string'}}
{{mystring|stringCamelize}} becomes 'thisIsAString'
{{mystring|stringCapitalize}} becomes 'This is a string'
{{mystring|stringChompLeft:'string'}} becomes 'this is a '
{{mystring|stringChompRight:'this'}} becomes ' is a string'

etc, etc (more documentation at http://stringjs.com/)
```


## Contributing

```bash
npm install
npm test
```

## License

MIT.
