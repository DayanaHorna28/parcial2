const API = "http://localhost:3000/api/libros";

async function listarLibros() {
    const res = await fetch(API);
    const data = await res.json();

    document.getElementById("libros").innerHTML =
        data.map(l => `<p>${l.titulo} - ${l.autor}</p>`).join("");
}

function mostrarSeccion(id) {
    document.querySelectorAll(".seccion").forEach(sec => sec.classList.add("oculto"));
    document.getElementById(id).classList.remove("oculto");
}

