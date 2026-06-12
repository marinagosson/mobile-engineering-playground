import { Logger }
  from './logger';

import { getTraceId }
from './trace-context';

export class ConsoleLogger
  implements Logger {

  info(
    message: string,
    metadata?: Record<string, unknown>,
  ): void {
    console.log(
      JSON.stringify({
        level: 'INFO',
        traceId: getTraceId(),
        message,
        metadata,
      }),
    );
  }

  error(
    message: string,
    metadata?: Record<string, unknown>,
  ): void {
    console.error(
      JSON.stringify({
        level: 'ERROR',
        traceId: getTraceId(),
        message,
        metadata,
      }),
    );
  }
}