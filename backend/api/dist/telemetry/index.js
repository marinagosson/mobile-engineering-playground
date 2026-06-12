"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.startTelemetry = startTelemetry;
const sdk_node_1 = require("@opentelemetry/sdk-node");
const auto_instrumentations_node_1 = require("@opentelemetry/auto-instrumentations-node");
const sdk = new sdk_node_1.NodeSDK({
    instrumentations: [
        (0, auto_instrumentations_node_1.getNodeAutoInstrumentations)(),
    ],
});
async function startTelemetry() {
    await sdk.start();
}
