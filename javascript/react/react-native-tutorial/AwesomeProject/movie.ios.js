var React = require('react-native');
var styles = {};

styles.common = require('./common-style'),
styles.movie = require('./movie-style');

var {
  AppRegistry,
  Image,
  Text,
  View,
} = React;

var Movie = React.createClass({
  render: function() {
    return (
      <View style={styles.common.container}>
        <Image source={{uri: this.props.data.posters.thumbnail}}
               style={styles.movie.thumbnail}>
        </Image>
        <View style={styles.movie.rightContainer}>
          <Text style={styles.movie.title}>{this.props.data.title}</Text>
          <Text style={styles.movie.year}>{this.props.data.year}</Text>
        </View>
      </View>
    );
  },
});

module.exports = Movie;

