# Proof of concept using the awfully documented 80legs

# Page Tester
http://80apptester.80legs.com/

# Install

```
$ npm i
```

# Set API Key

```
$ export EIGHTYLEGS_KEY="jqgga79z2ewn15gsxtdlki9w1l9mi2fe"
```

# Run

```
# beware: only I have access...
$ npm start
$ curl -X POST -H "Content-Type:application/json" -d "{\"name\": \"testing\"}" http://localhost:3000/crawl
```
