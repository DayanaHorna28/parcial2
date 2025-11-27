import express from "express";
import routes from "./routes.js";

const app = express();
app.use(express.json());
app.use("/api", routes);

app.listen(3000, () =>
    console.log("API corriendo en http://localhost:3000")
);
