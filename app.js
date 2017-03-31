const express = require('express');

const app = module.exports = express();

app.use((req, res, next) => {
  next();
});

app.get('/', (req, res) => {
  
  return new Promise( (resolve, reject) => {
  	
  	if( res ) resolve(true);

  }).then(( response ) =>{

  		res.set('Content-Type', 'application/json');
  		res.send('hello world -- Friday' + new Date);

  }).catch( (err) => {
  		throw 'Err serving path';
  })

});


if (!module.parent) {
  app.listen(1337, ()=> 
  {
	console.log('Listening http://localhost:1337/');
  });
}

