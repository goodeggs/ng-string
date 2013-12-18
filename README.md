# ng-string

An [angularjs](http://angularjs.org/) factory and set of filters encapsulating the awesome [string.js library](http://stringjs.com/).

```html
{{mystring = 'this is a string'}}
{{mystring|camelize}} becomes 'thisIsAString'
{{mystring|capitalize}} becomes 'This is a string'
{{mystring|chompLeft:'string'}} becomes 'this is a '
{{mystring|chompRight:'this'}} becomes ' is a string'
etc etc
```

More documentation at http://stringjs.com/

```javascript
function AwesomeCtrl($scope, string) {
  string('foobar').chompLeft('foo').s; // 'bar'
}
```


## Contributing

```bash
npm install
npm test
```

## License

MIT.
