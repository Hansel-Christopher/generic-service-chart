{{/* Generate the standard labels used on all resources */}}
{{- define "service-chart.labels" -}}
app.kubernetes.io/name: "{{ include "service-chart.name" . }}"
app.kubernetes.io/instance: "{{ .Release.Name }}"
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/managed-by: "{{ .Release.Service }}"
{{- end }}

{{/* Derive the full name of the application */}}
{{- define "service-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/* Common name template */}}
{{- define "service-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}
