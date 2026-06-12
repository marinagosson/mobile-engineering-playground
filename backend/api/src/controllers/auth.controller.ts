import { Request, Response } from 'express';
import { AuthService } from '../services/auth.service';
import { loginSchema } from '../schemas/login.schema';
import { logger } from '../observability'; 

import { trace }
  from '@opentelemetry/api';

const authService = new AuthService();

const tracer =
  trace.getTracer(
    'auth-controller',
  );

export class AuthController {
  
  async login(
    req: Request,
    res: Response,
  ) {

    const tracer =
    trace.getTracer( 
      'auth.controller.login',
    );

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