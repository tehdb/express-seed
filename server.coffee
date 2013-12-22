express = require("express")
fs = require("fs")
cnf = JSON.parse(fs.readFileSync("config.json"))

app = express()

app
	.use(app.router)
	.use(express.static(__dirname + "/public"))
	.get("/", (req, res) ->
        res.send("root")
	)
	.listen( cnf.port, cnf.host )
