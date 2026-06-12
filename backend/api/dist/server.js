"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const swagger_ui_express_1 = __importDefault(require("swagger-ui-express"));
const swagger_1 = require("./docs/swagger");
const observability_1 = require("./observability");
const request_logger_1 = require("./middlewares/request-logger");
const auth_route_1 = require("./routes/auth.route");
const app = (0, express_1.default)();
app.use((0, cors_1.default)());
app.use(request_logger_1.requestLogger);
app.use(express_1.default.json());
app.use('/docs', swagger_ui_express_1.default.serve, swagger_ui_express_1.default.setup(swagger_1.swaggerDocument));
app.use('/auth', auth_route_1.authRoutes);
app.listen(3000, () => {
    observability_1.logger.info('API running on port 3000');
});
