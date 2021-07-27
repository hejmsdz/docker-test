const { promisify } = require('util');
const figlet = promisify(require('figlet'));

figlet('hello project 1').then(console.log);
