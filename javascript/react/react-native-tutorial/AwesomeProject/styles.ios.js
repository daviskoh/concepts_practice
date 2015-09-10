var StyleSheet = require('react-native').StyleSheet;

var styles = StyleSheet.create({
  container: {
    flex: 1,
    // children of main container
    // will be laid horizontally vs vertically
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  listView: {
    paddingTop: 20,
    backgroundColor: '#F5FCFF',
  },
});

module.exports = styles;

