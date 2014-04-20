# $apply and $digest

## How it works

**$scope.$apply()** takes a function or an Angular expression string, executes it, then calls **$scope.$digest()** to update any **bindings** or **watchers**.

## What AngularJS does

Angular already calls code within a $apply call. Examples:

	ng-click
	$http callbacks
	controller initializations

**Note**: calling $apply within $apply throws **error**

## When to use actually $apply

For non-AngularJS specific functionality. Example setTimeout:

``` javascript
	setTimeout(function() {
		$scope.$apply(function() {
			$scope.message = 'timeout called';
		});
	});
```

**Note**: Angular actually provides a $timeout function that wraps code in $apply

