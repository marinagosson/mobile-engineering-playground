import { describe, expect, it } from 'vitest';

import { loginSchema } from '../src/schemas/login.schema';

describe('LoginSchema', () => {
  it('should accept valid payload', () => {
    const result = loginSchema.safeParse({
      email: 'admin@test.com',
      password: '123456',
    });

    expect(result.success).toBe(true);
  });

  it('should reject invalid email', () => {
    const result = loginSchema.safeParse({
      email: 'invalid-email',
      password: '123456',
    });

    expect(result.success).toBe(false);
  });

  it('should reject short password', () => {
    const result = loginSchema.safeParse({
      email: 'admin@test.com',
      password: '123',
    });

    expect(result.success).toBe(false);
  });

  it('should reject empty payload', () => {
    const result = loginSchema.safeParse({});

    expect(result.success).toBe(false);
  });
});