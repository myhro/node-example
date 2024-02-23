const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World');
});

app.get('/about', (req, res) => {
  res.send('About Page');
});

// Handle 404 - keep this as the last route
app.use((req, res, next) => {
  res.status(404).send('404 Not Found');
});

const server = app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
