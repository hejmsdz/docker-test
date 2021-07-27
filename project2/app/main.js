const { promisify } = require('util');
const figlet = promisify(require('figlet'));

figlet('hello project 2').then(console.log);
