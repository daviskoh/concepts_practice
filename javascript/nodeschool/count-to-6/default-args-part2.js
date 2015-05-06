module.exports = (string, numOfMarks = string.length) => {
    let importantString = string;

    for (var i = 0; i < numOfMarks; i++) {
        importantString += '!';
    }

    return importantString;
};

