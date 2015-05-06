module.exports = (...nums) => {
    return nums.reduce((sum, currN) => sum + currN) / nums.length;
};

