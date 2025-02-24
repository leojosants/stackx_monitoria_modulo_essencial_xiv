
const fileSystem = require("fs");


fileSystem.readFile(
    "arquivo.txt", "utf-8", (err, data) => {
        if (err) {
            console.error(err);
            return;
        }

        console.log(data);
    }
);