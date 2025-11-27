import pg from "pg";

const client = new pg.Client({
    host: process.env.DB_HOST || "postgres",
    user: process.env.DB_USER || "postgres",
    password: process.env.DB_PASSWORD || "postgres",
    database: process.env.DB_NAME || "prestamo_libros"
});

client.connect()
    .then(() => console.log("Conectado a PostgreSQL"))
    .catch(err => console.error("Error conexión:", err));

export default client;
