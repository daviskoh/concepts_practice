var React = require('react-native'),
    styles = require('./movie-style');

var {
  AppRegistry,
  Image,
  Text,
  View,
} = React;

var Movie = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Image source={{uri: this.props.data.posters.thumbnail}}
               style={styles.thumbnail}>
        </Image>
        <View style={styles.rightContainer}>
          <Text style={styles.title}>{this.props.data.title}</Text>
          <Text style={styles.year}>{this.props.data.year}</Text>
        </View>
      </View>
    );
  },
});

module.exports = Movie;

