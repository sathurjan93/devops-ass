# devops-ass


### Observability

The service relies on Google Cloud Run’s built-in observability features.

- **Logging**: Application and request logs are written to stdout and collected automatically by Cloud Logging.
- **Metrics**: Cloud Run exports request count, latency, error rate, and instance metrics to Cloud Monitoring.
- **Health Checks**: A `/health` endpoint is exposed and validated in CI to ensure service readiness.

### High Availability & Reliability

- Cloud Run provides regional, multi-zone high availability by default.
- The service is stateless, allowing automatic horizontal scaling.
- Autoscaling is configured with `minScale = 0` to optimize cost.
- In production, alerting policies would be configured for high error rate and latency thresholds.
