import { Router } from 'express';

import { AuthController } from '../controllers/auth.controller';

import { validate }
  from '../middlewares/validate';

import { loginSchema }
  from '../schemas/login.schema';

const authRoutes = Router();

const authController =
  new AuthController();

authRoutes.post(
  '/login',
  validate(loginSchema),
  authController.login,
);

export { authRoutes };