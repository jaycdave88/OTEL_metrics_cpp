cc_binary(
    name = "metrics_simple_example",
    srcs = [
        "main.cc",
    ],
    linkopts = ["-pthread"],
    deps = [
        "//api",
        "//exporters/ostream:ostream_metrics_exporter_deprecated",
        "//sdk/src/_metrics:metrics_deprecated",
    ],
)

cc_binary(
    name = "metrics_ostream_example",
    srcs = [
        "metrics_ostream.cc",
    ],
    linkopts = ["-pthread"],
    deps = [
        "//api",
        "//examples/common/metrics_foo_library:common_metrics_foo_library",
        "//exporters/ostream:ostream_metric_exporter",
        "//exporters/otlp:otlp_http_metric_exporter",
        "//exporters/otlp:otlp_http_exporter",
        "//sdk/src/metrics",
    ],
)
