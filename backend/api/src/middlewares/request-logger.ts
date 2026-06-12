import { randomUUID } from 'crypto';

import { Request, Response, NextFunction }
  from 'express';

import { logger } from '../observability';;

export function requestLogger(
  req: Request,
  res: Response,
  next: NextFunction,
) {
  const requestId = randomUUID();

  req.context = { 
  requestId,
  };

  const start = Date.now();

  res.on('finish', () => {
    const duration =
      Date.now() - start;

    logger.info(
      'Request completed',
      {
        requestId,
        method: req.method,
        path: req.originalUrl,
        statusCode: res.statusCode,
        durationMs: duration,
      },
    );

  });

  next();
}