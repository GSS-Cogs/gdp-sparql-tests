FROM cloudfluff/sparql-test-runner

COPY tests /usr/local/tests/
ENTRYPOINT ["sparql-test-runner", "-t", "/usr/local/tests"]