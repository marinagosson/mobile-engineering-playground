import { trace }
  from '@opentelemetry/api';

import { logger }
from '../observability';

export class AuthService {
  async login(
    email: string,
    password: string,
  ) {
    const tracer = trace.getTracer('auth-service',);
    return tracer.startActiveSpan('auth.service.login',
      async (span) => { 
        try {
          span.setAttribute(
            'auth.email',
            email,
          );

          if (
            email === 'admin@test.com' &&
            password === '123456'
          ) {

            span.setAttribute(
              'auth.success',
              true,
            );

            logger.info(
              'User authenticated',
              {
                email,
              },
            );

            return {
              token:
                'fake-jwt-token',
              user: {
                id: 1,
                name: 'Admin',
              },
            };
          }

          span.setAttribute(
            'auth.success',
            false,
          );

          const error =
            new Error(
              'Invalid credentials',
            );

          span.recordException(
            error,
          );

          throw error;

        } finally { 
          span.end();
        }
    });
    
  }
}