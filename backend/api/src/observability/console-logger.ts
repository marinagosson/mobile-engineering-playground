import { Logger }
  from './logger';

export class ConsoleLogger
  implements Logger {

  info(
    message: string,
    metadata?: Record<string, unknown>,
  ): void {
    console.log(
      JSON.stringify({
        level: 'INFO',
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
        message,
        metadata,
      }),
    );
  }
}