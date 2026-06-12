import { context, trace }
  from '@opentelemetry/api';

export function getTraceId() {
  const span =
    trace.getSpan(
      context.active(),
    );

  return span
    ?.spanContext()
    .traceId;
}