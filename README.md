# OTEL_metrics_cpp

A sample source code showing how to instrument C++ OpenTelemetry Metrics Simple example & sending it to Datadog via the Collector Exporter, using OTLP protocol. 

# Instructions

Step 1. 
- Provide your Datadog API key under the config.yml. 

Step 2.

```
docker compose up --build
```
Step 3.

- Navigate to https://app.datadoghq.com/metric/summary & search for the metric `hello_world_successful_runs_count` to visualize the metric data. 
