var fs = require('fs');

var Schema = require('protobufs').Schema;
var schema = new Schema(fs.readFileSync('database.desc'));
