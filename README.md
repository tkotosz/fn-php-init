# fn-php-init

[Init image](https://github.com/fnproject/docs/blob/master/cli/how-to/create-init-image.md) for [fnproject](https://github.com/fnproject) which can be used to create fn functions in php.

Fn function uses [fn-php-fdk](https://github.com/tkotosz/fn-fdk-php) to make it easy to create functions.

## Build

Build new version of this init-image using the build.sh included in this repository.

## Usage

1. Create new function
```
fn init --init-image tkotosz/fn-php-init myfunc
```

2. Deploy it
```
fn -v deploy --local --app myapp myfunc
```

3. Run it
```
fn invoke myapp myfunc
```
You should see the result:
```
{"message":"Hello World"}
```

or

```
echo -n '{"name":"Tom"}' | fn invoke myapp myfunc
```
You should see the result:
```
{"message":"Hello Tom"}
```

For more examples see the [examples](https://github.com/tkotosz/fn-fdk-php/tree/master/examples) in the [fn-fdk-php](https://github.com/tkotosz/fn-fdk-php) repository.
