"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AuthController = void 0;
const auth_service_1 = require("../services/auth.service");
const login_schema_1 = require("../schemas/login.schema");
const observability_1 = require("../observability");
const authService = new auth_service_1.AuthService();
class AuthController {
    async login(req, res) {
        try {
            const dto = login_schema_1.loginSchema.parse(req.body);
            const result = await authService.login(dto.email, dto.password);
            observability_1.logger.info('User authenticated', {
                email: dto.email,
            });
            return res.status(200).json(result);
        }
        catch (error) {
            if (error instanceof Error) {
                return res.status(400).json({
                    message: error.message
                });
            }
            return res.status(401).json({
                message: 'Invalid credentials',
            });
        }
    }
}
exports.AuthController = AuthController;
