express = require 'express'
engines = require 'consolidate'

app = express()

app.engine 'eco', engines.eco
app.set 'view engine', 'eco'

app.get '/', (req, res) ->
  res.render 'index',
    name: 'World'

app.listen 3000
