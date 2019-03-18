FROM cloudfluff/sparql-test-runner

COPY tests /usr/local/tests/
CMD ["sparql-test-runner", "-t", "/usr/local/tests"]
