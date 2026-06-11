export class AuthService {
  async login(
    email: string,
    password: string,
  ) {
    if (
      email === 'admin@test.com' &&
      password === '123456'
    ) {
      return {
        token: 'fake-jwt-token',
        user: {
          id: 1,
          name: 'Admin',
        },
      };
    }

    throw new Error('Invalid credentials');
  }
}