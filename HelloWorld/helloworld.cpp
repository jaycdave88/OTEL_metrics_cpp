

#ifdef ENABLE_METRICS_PREVIEW
#  include <iostream>
#  include "opentelemetry/_metrics/provider.h"
#  include "opentelemetry/exporters/ostream/metrics_exporter.h"
#  include "opentelemetry/sdk/_metrics/controller.h"
#  include "opentelemetry/sdk/_metrics/meter.h"
#  include "opentelemetry/sdk/_metrics/meter_provider.h"
#  include "opentelemetry/sdk/_metrics/ungrouped_processor.h"

namespace metric_sdk      = opentelemetry::sdk::metrics;
namespace nostd           = opentelemetry::nostd;
namespace common          = opentelemetry::common;
namespace exportermetrics = opentelemetry::exporter::metrics;
namespace metrics_api     = opentelemetry::metrics;

using namespace std;

int main(int argc, char*argv[])
{
	cout << "Hello World!!" << endl;
	return 0;
}

#else
int main()
{
  // empty
}
#endif