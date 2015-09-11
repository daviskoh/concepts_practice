/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var styles = require('./styles');
var Loader = require('./loader');
var Movie = require('./movie');

var {
  AppRegistry,
  Text,
  View,
  Image,
  ListView,
} = React;

var MOCKED_MOVIES_DATA  = [{ 
    title: 'Title',
    year: '2015',
    posters: {
        thumbnail: 'http://i.imgur.com/UePbdph.jpg'
    }
}];

var REQUEST_URL = [
    'https:/',
    'raw.githubusercontent.com',
    'facebook',
    'react-native',
    'master',
    'docs',
    'MoviesExample.json',
].join('/');

var AwesomeProject = React.createClass({
  getInitialState: function() {
    return {
      // used by ListView to determine which rows chnaged
      // over course of updates
      dataSource: new ListView.DataSource({
        rowHasChanged: (row1, row2) => row1 !== row2,
      }),
      // used to know when data is finished fetching
      loaded: false,
    };
  },

  // custom method for getting movie data
  fetchData: function() {
    fetch(REQUEST_URL)
      .then((resp) => resp.json())
      .then((respData) => {
        this.setState({
          dataSource: this.state.dataSource.cloneWithRows(respData.movies),
          loaded: true,
        });
      })
      .done();
  },

  // called exactly once after component finishes loading
  componentDidMount: function() {
    this.fetchData();
  },

  render: function() {
    if (!this.state.loaded) {
      return this.renderLoadingView();
    }

    return (
      <ListView dataSource={this.state.dataSource}
                renderRow={this.renderMovie}
                style={styles.listView}>
      </ListView>
    );
  },

  renderLoadingView: function() {
    return (<Loader></Loader>);
  },

  renderMovie: function(movie) {
    return (
      <Movie data={movie}></Movie>
    );
  },
});

// entry point for JS app
AppRegistry.registerComponent('AwesomeProject', () => AwesomeProject);

