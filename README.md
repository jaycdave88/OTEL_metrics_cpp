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

Step 4.

- Download the `ProductUsageTelemery.json` & upload it to Datadog to visualize the following dashboard: 

![alt text](https://p-qkfgo2.t2.n0.cdn.getcloudapp.com/items/yAu1mnQp/b7044c8c-ee9d-4fdd-8a66-4e57811e88e1.jpg?v=0b556baf939481222ed4789779eed3bc)
