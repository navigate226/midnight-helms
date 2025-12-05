{{/*
Expand the name of the chart.
*/}}
{{- define "proof-server.name" -}}
{{- .Chart.Name | replace "." "-" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a fully qualified app name.
*/}}
{{- define "proof-server.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := include "proof-server.name" . -}}
{{- if .Values.nameOverride }}
{{- $name = .Values.nameOverride -}}
{{- end -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "proof-server.labels" -}}
app: {{ include "proof-server.name" . }}
{{- end }}
