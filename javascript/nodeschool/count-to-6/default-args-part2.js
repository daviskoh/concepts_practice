module.exports = (string, numOfMarks = string.length) => {
    let importantString = string;

    return importantString + "!".repeat(numOfMarks);
};

