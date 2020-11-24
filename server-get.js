const express = require('express');
const app = express();

const redisClient = require('./redis-client');

app.get('/:key', async (req, res) => {
  const { key } = req.params;
  const rawData = await redisClient.getAsync(key);
  return res.json(JSON.parse(rawData));
});

app.get('/', (req, res) => {
  return res.send('hello from server-get.js');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
