env = "dev"

definition_containers = {
  proxy_reverso = {
    dev = {
      image = "nginx:alpine-slim"
      int_port = 80
      ext_port = [30000, 30001]
    }
    prod = {
      image = "nginx:stable-alpine"
      int_port = 80
      ext_port = [30000, 30001]
    }
  }
  grafana = {
    dev = {
      image = "grafana/grafana"
      int_port = 3000
      ext_port = [30002, 30003]
    }
    prod = {
      image = "grafana/grafana"
      int_port = 3000
      ext_port = [30002, 30003]
    }
  }
  simple-app = {
    dev = {
      image = "yeasy/simple-web"
      int_port = 80
      ext_port = [30004]
    }
    prod = {
      image = "grafana/grafana"
      int_port = 80
      ext_port = [30004]
    }
  }
}

container_name          = "app"
container_port_internal = 80
container_port_external = [8080, 8081]