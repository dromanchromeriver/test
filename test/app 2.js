const request = require('supertest');
const should = require('should');
const app  = require(__dirname + '/../app');
const port = 3333;

const baseUrl = 'http://localhost:' + port;
let server;

describe('app', () => {

  before( (done) => {
    server = app.listen(port, (err, result) => {
      if (err) {
        done(err);
      } else {
        done();
      }
    });
  });
 
  after((done) => {
    server.close();
    done();
  });


  it('GET /', (done) => {
    request(baseUrl)
      .get('/')
      .set('Accept', 'application/json')
      .expect('Content-Type', /json/)
      .expect(200, done)
  });

});
    

