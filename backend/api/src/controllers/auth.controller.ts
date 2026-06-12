import { Request, Response } from 'express';
import { AuthService } from '../services/auth.service';
import { loginSchema } from '../schemas/login.schema';
import { logger } from '../observability'; 

const authService = new AuthService();

export class AuthController {
  async login(
    req: Request,
    res: Response,
  ) {
    try {
      const dto =
        loginSchema.parse(
          req.body,
        );

      const result =
        await authService.login(
          dto.email,
          dto.password,
        );

      logger.info(
        'User authenticated',
        {
          email: dto.email,
        },
      );
      return res.status(200).json(result);
    } catch (error) {
      
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