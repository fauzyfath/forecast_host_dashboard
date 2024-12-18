const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");
const path = require("path");

const app = express();
const port = 3000;

// Enable CORS
app.use(cors());

// Serve static untuk file index.html dari 'public' directory
app.use(express.static(path.join(__dirname)));

// Koneksi MySQL
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "sensor_data",
});

// Koneksi Database
connection.connect((err) => {
  if (err) throw err;
  console.log("Connected to database!");
});

// API Endpoint untuk data
// API Endpoint untuk data
app.get("/api/weather", (req, res) => {
  const query = `
    SELECT 
      r.timestamp,
      r.curah_hujan_per_menit,
      r.curah_hujan_per_jam,
      r.curah_hujan_hari_ini,
      w.kecepatan_kilometer_per_jam,
       w.kecepatan_meter_per_detik,
      w.rotasi_per_detik,
      l.lux_value,
      l.cahaya_cuaca,
      d.distance
    FROM 
      rainfall r
    JOIN 
      wind w ON r.timestamp = w.timestamp
    JOIN 
      light l ON r.timestamp = l.timestamp
    JOIN 
      distance d ON r.timestamp = d.timestamp
    ORDER BY r.timestamp DESC
    LIMIT 10;
  `;

  connection.query(query, (error, results) => {
    if (error) return res.status(500).send(error);
    res.json(results);
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
