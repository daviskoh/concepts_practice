var React = require('react-native');
var styles = {};

styles.common = require('./common-style'),
styles.movie = require('./movie-style');

var {
  AppRegistry,
  Image,
  Text,
  View,
  TouchableHighlight,
} = React;

var Movie = React.createClass({
  render: function() {
    return (
      <View style={styles.common.container}>
        <Image source={{uri: this.props.data.posters.thumbnail}}
               style={styles.movie.thumbnail}>
        </Image>
        <TouchableHighlight onPress={this.handleTouch}
                            style={styles.movie.rightContainer}
                            underlayColor="green">
          <View>
            <Text style={styles.movie.title}>{this.props.data.title}</Text>
            <Text style={styles.movie.year}>{this.props.data.year}</Text>
          </View>
        </TouchableHighlight>
      </View>
    );
  },
});

module.exports = Movie;

