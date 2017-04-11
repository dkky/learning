console.log('May Node be with you')

const express = require('express');
const app = express();
const bodyParser= require('body-parser')
const MongoClient = require('mongodb').MongoClient

    
app.use(bodyParser.urlencoded({extended: true}))

var db
var mongourl = 'mongodb://dkang.kky:kai941128yong@ds035059.mlab.com:35059/node-first'

MongoClient.connect(mongourl, (err, database) => {
  if (err) return console.log(err)
  db = database
  app.listen(3000, () => {
    console.log('listening on 3000')
  })
})

app.get('/', function(req, res) {
  res.sendFile(__dirname + '/index.html')
})


app.post('/quotes', (req, res) => {
  db.collection('quotes').save(req.body, (err, result) => {
    if (err) return console.log(err)

    console.log('saved to database')
    res.redirect('/')
  })
})