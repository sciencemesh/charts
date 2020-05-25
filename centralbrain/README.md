# Central-Brain

## Examples:

### Scrape metrics from iop-revad in Prometheus

```console
$ cat << EOF > scrape-metrics-from-revad.yaml
iop:
  revad:
    configFiles:
      revad.toml: |
        [shared]
        jwt_secret = "mysecret"

        [http]
        address = "0.0.0.0:20080"

        # Enable monitoring services
        [http.services.prometheus]

centralbrain:
  prometheus:
    extraScrapeConfigs: |
      - job_name: 'revad'
        static_configs:
          - targets:
              - iop-revad:20080
EOF

$ helm upgrade iop sciencemesh/iop -f scrape-metrics-from-revad.yaml

$ helm upgrade centralbrain sciencemesh/centralbrain -f scrape-metrics-from-revad.yaml
```

- [ ] TODO (@SamuAlfagme): Determine whether a sidecar for revad is required to reload config on upgrades.
