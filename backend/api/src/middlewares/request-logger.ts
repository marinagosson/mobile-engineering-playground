import { randomUUID } from 'crypto';

import { Request, Response, NextFunction }
  from 'express';

import { logger } from '../observability';

import { getTraceId }
  from '../observability/trace-context';

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
        traceId: getTraceId(), 
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