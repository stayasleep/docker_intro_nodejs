const express = require('express');
const PORT = 8080;
const HOST = '0.0.0.0';
const app = express();

//client side requests will be directed here
app.get('/', (req,res)=> {
	res.send("Hello Stayasleep\n");
});

app.listen(PORT,HOST, () => {
	console.log(`server running on http://${HOST}:/${PORT}/`);
});
