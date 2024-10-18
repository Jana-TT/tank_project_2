from opentelemetry import trace
from opentelemetry.exporter.otlp.proto.http.trace_exporter import OTLPSpanExporter
from opentelemetry.instrumentation.fastapi import FastAPIInstrumentor
from opentelemetry.sdk.trace import TracerProvider
from opentelemetry.sdk.trace.export import BatchSpanProcessor


def setup_tracing():
    # Setting  up the tracer Provider and Exporter
    provider = TracerProvider()
    exporter = OTLPSpanExporter()

    processor = BatchSpanProcessor(exporter)
    provider.add_span_processor(processor)

    # the default tracer provider
    trace.set_tracer_provider(provider)


def instrument_app(app):
    # Instrument the FastAPI app (instrument, the code to make it work)
    FastAPIInstrumentor.instrument_app(app)
