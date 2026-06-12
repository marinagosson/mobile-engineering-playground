"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ConsoleLogger = void 0;
class ConsoleLogger {
    info(message, metadata) {
        console.log(JSON.stringify({
            level: 'INFO',
            message,
            metadata,
        }));
    }
    error(message, metadata) {
        console.error(JSON.stringify({
            level: 'ERROR',
            message,
            metadata,
        }));
    }
}
exports.ConsoleLogger = ConsoleLogger;
