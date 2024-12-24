import * as Sentry from '@sentry/react';
import { Integrations } from '@sentry/tracing';

Sentry.init({
  dsn: 'https://8ba4e72e9dbfdfbb44f7be8d986284ef@o4508504924225536.ingest.us.sentry.io/4508522946035712',  // Use the DSN from Sentry dashboard
  integrations: [
    new Integrations.BrowserTracing(),
  ],
  // Adjust the sample rate as needed (1.0 = 100% of transactions are sent)
  tracesSampleRate: 1.0,
});
