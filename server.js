require("dotenv").config();

const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");
const postRoutes = require("./src/routes/postRoutes");
const reportRoutes = require("./src/routes/reportRoutes");
const setupSwagger = require('./src/config/swagger'); 
const path = require("path");



const app = express();
setupSwagger(app);

app.use(cors());
app.use(express.json());
app.use("/api/users", usersRoutes);
app.use("/api/posts", postRoutes);
app.use("/api/report", reportRoutes);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));



const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});

