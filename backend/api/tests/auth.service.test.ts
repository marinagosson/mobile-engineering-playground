import { describe, expect, it }
  from 'vitest';

import { AuthService }
  from '../src/services/auth.service';

describe(
  'AuthService',
  () => {

    const service =
      new AuthService();

    it(
      'should login successfully',
      async () => {
        const result =
          await service.login(
            'admin@test.com',
            '123456',
          );

        expect(
          result.token,
        ).toBe(
          'fake-jwt-token',
        );
      },
    );

    it(
      'should throw on invalid credentials',
      async () => {
        await expect(
          service.login(
            'wrong@test.com',
            '123456',
          ),
        ).rejects.toThrow();
      },
    );
  },
);