const { EventEmitter, once } = require("node:events");
const eventEmitter = new EventEmitter();


once(eventEmitter, "evento")
    .then(
        ([event]) => console.log("Evento recebido:", event)
    )
    .catch(
        (err) => console.error("Erro ao receber evento:", err.message)
    );

eventEmitter.emit("evento", "Olá");