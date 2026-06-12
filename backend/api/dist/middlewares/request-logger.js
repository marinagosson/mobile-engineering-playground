"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.requestLogger = requestLogger;
const crypto_1 = require("crypto");
const observability_1 = require("../observability");
;
function requestLogger(req, res, next) {
    const requestId = (0, crypto_1.randomUUID)();
    req.context = {
        requestId,
    };
    const start = Date.now();
    res.on('finish', () => {
        const duration = Date.now() - start;
        observability_1.logger.info('Request completed', {
            requestId,
            method: req.method,
            path: req.originalUrl,
            statusCode: res.statusCode,
            durationMs: duration,
        });
    });
    next();
}
