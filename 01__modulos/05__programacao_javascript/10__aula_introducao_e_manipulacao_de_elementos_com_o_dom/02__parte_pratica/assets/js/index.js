const bt_1 = document.getElementById("id-bt-1");
const bt_2 = document.getElementById("id-bt-2");


bt_1.addEventListener(
    "click", (event) => {
        const main = document.getElementById("id-main");

        main.style.width = "800px";
        main.style.backgroundColor = "coral";
    }
);

bt_2.addEventListener(
    "click", (event) => {
        const main = document.getElementById("id-main");

        main.style.width = "600px";
        main.style.backgroundColor = "black";
    }
);