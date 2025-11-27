import express from "express";
import db from "./db.js";

const router = express.Router();

router.get("/libros", async (req, res) => {
    const result = await db.query("SELECT * FROM libros");
    res.json(result.rows);
});

router.post("/prestamo", async (req, res) => {
    const { libro_id, usuario } = req.body;

    await db.query(
        "INSERT INTO prestamos (libro_id, usuario, fecha) VALUES ($1, $2, NOW())",
        [libro_id, usuario]
    );

    res.json({ msg: "Préstamo registrado" });
});

export default router;
