var PE1 = require('../lib/PE1.js');

/*
  ======== A Handy Little Nodeunit Reference ========
  https://github.com/caolan/nodeunit

  Test methods:
    test.expect(numAssertions)
    test.done()
  Test assertions:
    test.ok(value, [message])
    test.equal(actual, expected, [message])
    test.notEqual(actual, expected, [message])
    test.deepEqual(actual, expected, [message])
    test.notDeepEqual(actual, expected, [message])
    test.strictEqual(actual, expected, [message])
    test.notStrictEqual(actual, expected, [message])
    test.throws(block, [error], [message])
    test.doesNotThrow(block, [error], [message])
    test.ifError(value)
*/

exports.eulerNumberTests = {

  setUp: function(callback) {
    this.ten        = PE1.eulerNumber(10);
    this.twenty     = PE1.eulerNumber(20);
    this.thirtyfive = PE1.eulerNumber(35);
    callback();
  },

  test1: function(test) {
    test.equals(this.ten, 23, "should be 23");
    test.done();
  },

  test2: function(test) {
    test.equals(this.twenty, 78, "should be 78");
    test.done();
  },

  test3: function(test) {
    test.equals(this.thirtyfive, 258, "should be 258");
    test.done();
  }

};