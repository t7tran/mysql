# docker-mysql
Extension of the official MySQL with support for script execution on every startup

	docker pull ghcr.io/t7tran/mysql:5.7.44
	docker pull ghcr.io/t7tran/mysql:8.3.0

All scripts mounted under `/docker-entrypoint-initdb.d/` are always executed on every startup.