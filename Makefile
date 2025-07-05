# Makefile for The Local Pros website
# Serves the static site locally using Python http.server

# Configuration
PORT ?= 8000
HOST ?= localhost
PYTHON ?= python3

# Default target
.PHONY: all
all: serve

# Serve the site using Python's http.server
.PHONY: serve
serve:
	@$(PYTHON) -m http.server $(PORT) --bind $(HOST) --directory .


# Clean up any temporary files
.PHONY: clean
clean:
	@echo "Cleaning up temporary files"
	@rm -f *.log

# Help message
.PHONY: help
help:
	@echo "Makefile for The Local Pros website"
	@echo ""
	@echo "Usage:"
	@echo "  make serve        # Serve the site locally using Python http.server (port: $(PORT))"
	@echo "  make clean        # Remove temporary files (e.g., logs)"
	@echo "  make help         # Show this help message"
	@echo ""
	@echo "Environment variables:"
	@echo "  PORT=8000        # Set custom port (default: 8000)"
	@echo "  HOST=localhost   # Set custom host (default: localhost)"
	@echo "  PYTHON=python3   # Set Python command (default: python3)"