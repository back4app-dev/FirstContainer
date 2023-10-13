const express = require("express");
const redis = require("redis");
const app = express();
const client = redis.createClient({
    host: "localhost",
    port: 6379
});

client.on("error", (err) => {
    console.log(`Error: ${err}`);
});

app.get("/", (req, res) => {
    client.incr("visitor_count", (err, count) => {
        if(err) {
            return res.status(500).send("Error fetching visitor count");
        }
        res.send(`Number of visits: ${count}`);
    });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
