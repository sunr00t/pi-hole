![Docker](https://img.shields.io/badge/Docker-0078D7.svg?style=for-the-badge&logo=docker&logoColor=white)
![Sqlite](https://img.shields.io/badge/sqlite-%23316192.svg?style=for-the-badge&logo=sqlite&logoColor=white)

## Pi-hole
**Documentação Oficial**
* [https://github.com/pi-hole/docker-pi-hole/](https://github.com/pi-hole/docker-pi-hole/)
* [https://docs.pi-hole.net/](https://docs.pi-hole.net/)
* [Blacklist - StevenBlack](https://github.com/StevenBlack/hosts)

## Getting Started

### Running
```bash
git clone git@github.com:sunr00t/pi-hole.git
```

```bash
docker compose up
```

#### Environment
* `TZ` - "America/Recife"
* `WEBPASSWORD` admin

#### Ports
* DNS `53/tcp`
* DNS - `53/udp`
* HTTP - `80/tcp`

#### Admin URL
`http://<IP_ADDRESS_OF_YOUR_PI_HOLE>/admin/`

## Definição

Classificado como um **Sinkhole DNS** (Buraco de DNS) é um servidor de DNS que é configurado para distribuir **endereços não roteáveis** para um determinado conjunto de nomes de domínio **(blacklists)**. Os computadores que usam o este buraco não conseguem acessar o site real.
<!-- markdownlint-disable MD033 -->
<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://gioxx.org/wp-content/uploads/2019/03/pi-hole-installazione-e-prima-configurazione-900x300.png">
    <source media="(prefers-color-scheme: light)" srcset="https://gioxx.org/wp-content/uploads/2019/03/pi-hole-installazione-e-prima-configurazione-900x300.png">
    <img src="https://gioxx.org/wp-content/uploads/2019/03/pi-hole-installazione-e-prima-configurazione-900x300.png" width="800" height="270" alt="Pi-hole website">
  </picture>
    <br>
    <strong>"Buraco Negro" de resolução de nomes</strong>
</p>
<!-- markdownlint-enable MD033 -->

### Funcionamento de um servidor DNS

![https://cihansol.com/blog/wp-content/uploads/2022/01/DNS_diagram.png](https://cihansol.com/blog/wp-content/uploads/2022/01/DNS_diagram.png)

1. Cada vez que você acessa um endereço de site como Yahoo.com, o navegador da Web dispara uma solicitação para um servidor especial (servidor DNS) com o nome do site (nome de domínio).

2. Esse servidor pega esse nome de domínio e procura a localização do servidor que possui seu conteúdo. Em seguida, responde com o endereço IP correspondente desse servidor na internet.

3. O navegador pode se conectar à fonte de onde o site está e recuperar todo o conteúdo para exibir para você.

### Funcionamento do Pi-hole

O Pi-hole atua como _middleware_ (DNS Filtering) bloqueando anuncios indesejáveis (ad-blocker) ou sites maliciosos antes de enviar para o **UpStream DNS** (Google, ATI, OpenDNS...)

![https://cihansol.com/blog/wp-content/uploads/2022/01/DNS_diagramPiHole.png](https://cihansol.com/blog/wp-content/uploads/2022/01/DNS_diagramPiHole.png)

Controlando efetivamente o acesso a domínio em redes locais, possibilitando a criação ou importação de uma blacklist (sites proibidos) que podem ser maliciosos ou perigosos bem como filtrar de conteúdo não autorizado (pornografia, jogos de azar, entre outros).
