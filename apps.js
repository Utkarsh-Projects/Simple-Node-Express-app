
const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.json({ message: "Hello from Node.js API running in Docker on AWS EC2!" });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`🚀 Server running on port ${PORT}`));
