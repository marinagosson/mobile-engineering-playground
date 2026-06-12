import express from 'express';
import cors from 'cors';

import swaggerUi
  from 'swagger-ui-express';

import { swaggerDocument }
  from './docs/swagger';

import { logger } from './observability';

import { requestLogger } from './middlewares/request-logger'; 

import { authRoutes } from './routes/auth.route';

const app = express();

app.use(cors());
app.use(requestLogger);
app.use(express.json());

app.use(
  '/docs',
  swaggerUi.serve,
  swaggerUi.setup(
    swaggerDocument,
  ),
);

app.use('/auth', authRoutes); 

app.listen(3000, () => {
  logger.info('API running on port 3000');
});