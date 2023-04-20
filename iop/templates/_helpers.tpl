{{/*
Configure the wopiserver if apps are enabled
*/}}
{{ if or (index .Values "appprovider-codimd").enabled (index .Values "appprovider-collabora").enabled }}
wopiserver:
  enabled: true
  config:
    codimd:
      enabled: {{ (index .Values "appprovider-codimd").enabled }}
      inturl: http://meshapps-codimd
{{ end }}
{{ if (index .Values "appprovider-codimd").enabled }}
codimd:
  codimd:
    extraEnvironmentVariables:
      CMD_DOMAIN: https://{{ .Values.ingress.hostname }}
{{ end }}
