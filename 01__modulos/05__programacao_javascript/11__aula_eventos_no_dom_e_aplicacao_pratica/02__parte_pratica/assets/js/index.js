const getBloco = window.document.querySelector("#id-bloco");


getBloco.textContent = "Mouse fora";

getBloco.addEventListener(
    "mouseover", () => {
        getBloco.style.backgroundColor = "aqua";
        getBloco.textContent = "Mouse dentro, click";
        getBloco.style.color = "black";
    }
);

getBloco.addEventListener(
    "mouseout", () => {
        getBloco.style.backgroundColor = "blueviolet";
        getBloco.textContent = "Mouse fora";
        getBloco.style.color = "white";
    }
);

getBloco.addEventListener(
    "click", () => {
        alert("Clicou")
    }
);