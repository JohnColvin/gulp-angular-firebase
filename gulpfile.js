var requireDir = require('require-dir');
require('coffee-script/register');
requireDir('./tasks', { recurse: true });
