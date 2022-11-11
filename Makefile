install:
	helm dependency update ./videos-helm-chart
	helm install videos-api ./videos-helm-chart -f videos-helm-chart/values.yaml -n microservices --create-namespace
uninstall:
	helm uninstall videos-api -n microservices
template:
	helm template videos-api ./playlist-helm-chart
dependencies:
	helm dependency update ./videos-helm-chart