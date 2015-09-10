/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var styles = require('./styles');
var {
  AppRegistry,
  Text,
  View,
  Image
} = React;

var MOCKED_MOVIES_DATA  = [{ 
    title: 'Title',
    year: '2015',
    posters: {
        thumbnail: 'http://i.imgur.com/UePbdph.jpg'
    }
}];

var AwesomeProject = React.createClass({
  render: function() {
    var movie = MOCKED_MOVIES_DATA[0];

    return (
      <View style={styles.container}>
        <Image source={{uri: movie.posters.thumbnail}}
               style={styles.thumbnail}>
        </Image>
        <View style={styles.rightContainer}>
          <Text style={styles.title}>
            {movie.title}
          </Text>
          <Text style={styles.year}>
            {movie.year}
          </Text>
        </View>
      </View>
    );
  }
});

AppRegistry.registerComponent('AwesomeProject', () => AwesomeProject);
