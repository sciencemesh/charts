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
