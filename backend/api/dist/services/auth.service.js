"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AuthService = void 0;
class AuthService {
    async login(email, password) {
        if (email === 'admin@test.com' &&
            password === '123456') {
            return {
                token: 'fake-jwt-token',
                user: {
                    id: 1,
                    name: 'Admin',
                },
            };
        }
        throw new Error('Invalid credentials');
    }
}
exports.AuthService = AuthService;
