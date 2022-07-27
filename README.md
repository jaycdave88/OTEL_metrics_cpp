# OTEL_metrics_cpp

A sample source code showing how to instrument C++ OpenTelemetry Metrics Simple example & sending it to Datadog via the Collector Exporter, using OTLP protocol. 

# Instructions
Provide your Datadog API key under the config.yml. 

Then, type:
```
docker compose up --build
```

Navigate to https://app.datadoghq.com/metric/summary & search for the metric `ostream_metric_example` to visualize the metric data. 
