/**
 * Adds umlauts to lowercase vowels in a string.
 * @param {string} str
 * @return {string}
 */
var ü = function(str) {
  return str.replace(/[aeiou]/g, function(ch) {
    var m = {
      a: 'ä',
      e: 'ë',
      i: 'ï',
      o: 'ö',
      u: 'ü'
    };
    return m[ch] || ch;
  });
};


/**
 * Spin̈al Tap amplifier volume normalization.
 * @param {number} num
 * @return {number}
 */
ü.n̈ = function(num) {
  return num < 11 ? 11 : num;
};
