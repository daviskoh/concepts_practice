var React = require('react-native');
var styles = require('./common-style');

var {
  Text,
  View,
} = React;

var Loader = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text>
          Loading movies...
        </Text>
      </View>
    );
  },
});

module.exports = Loader;

