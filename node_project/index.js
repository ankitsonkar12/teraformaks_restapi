const express = require('express');
const app = express();
const date = require('date-and-time')

const value = new Date();
app.get('/', (req,res) => {
const resp = {
    "CurrentTime" : date.format(value, 'HH:mm:ss'),
    "Task" : "Automate All The Things"
}
res.send(resp);
res.end();
});
app.listen(80, () => console.log('Listen to 80...'));