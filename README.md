# DApp de Votación

Este proyecto es una DApp de votación que permite a los usuarios votar por diferentes candidatos. Está construido con Solidity para los contratos inteligentes y React para el frontend. Utiliza **Truffle** como framework de desarrollo y **Ganache** como blockchain local para pruebas.

## **Requisitos Previos**

Antes de comenzar, asegúrate de tener instalados los siguientes programas:
```
- [Node.js y npm](https://nodejs.org/) (Versión LTS recomendada)
- [Truffle](https://trufflesuite.com/truffle/)
- [Ganache Desktop](https://trufflesuite.com/ganache/)
- [MetaMask](https://metamask.io/) (Extensión del navegador)
```
## **Instalación**

### **1. Clonar el Repositorio**

```bash
git clone https://github.com/pab-1984/testing-DApps
cd testing-DApps
```
### 2. Crear el Archivo .gitignore
Asegúrate de tener un archivo .gitignore en la raíz del proyecto con el siguiente contenido:
```
# Node.js
node_modules/
npm-debug.log
yarn-error.log

# Truffle
build/
.env

# IDEs
.vscode/
.idea/

# Sistema operativo
.DS_Store
```

### 3. Instalar Dependencias
Backend (Truffle y Contratos Inteligentes)
```
npm install -g truffle
npm install @truffle/hdwallet-provider
Frontend (React y Web3)
Navega a la carpeta del frontend y ejecuta:
```
```
cd frontend
npm install web3 @emotion/react @emotion/styled
```
### 4. Configurar Ganache
Abre Ganache Desktop.
Crea un nuevo workspace o usa Quickstart Ethereum.
Verifica que Ganache esté corriendo en http://127.0.0.1:7545.
### 5. Configurar Truffle
Abre el archivo truffle-config.js en la raíz del proyecto y verifica la siguiente configuración:

```
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
    },
  },
  compilers: {
    solc: {
      version: "0.8.0",
    },
  },
};
```
### 6. Compilar y Desplegar Contratos
Ejecuta los siguientes comandos en la carpeta raíz del proyecto:

```
truffle compile
truffle migrate --network development
```
Esto desplegará los contratos inteligentes en la blockchain local de Ganache.

### 7. Configurar MetaMask
Instala la extensión de MetaMask en tu navegador desde https://metamask.io/.
Conecta MetaMask a tu red de Ganache:
Red > Agregar Red
RPC URL: http://127.0.0.1:7545
Chain ID: 1337
Importa una cuenta de Ganache usando una clave privada.
8. Configurar el Frontend
En el archivo frontend/src/VotingApp.js, asegúrate de actualizar el ABI y la dirección del contrato:

```
const VOTING_ABI = [ /* Pega aquí el ABI del contrato desde build/contracts/Voting.json */ ];
const VOTING_ADDRESS = "DIRECCION_DEL_CONTRATO_DESPLEGADO";
```
### 9. Ejecutar el Frontend
Desde la carpeta frontend, ejecuta:

```
npm start
```
Esto abrirá la aplicación en http://localhost:3000.

Pruebas y Uso
Votar en la DApp
Abre la aplicación en el navegador (http://localhost:3000).
Conéctate con MetaMask.
Vota por uno de los candidatos y observa el cambio en el conteo de votos.
Ejecutar Pruebas de Contratos
Para ejecutar pruebas de contratos inteligentes, utiliza el siguiente comando en la carpeta raíz del proyecto:

truffle test
Estructura del Proyecto
```
├── contracts/           # Contratos inteligentes en Solidity
├── migrations/          # Scripts de migración para desplegar contratos
├── test/                # Pruebas automatizadas para los contratos
├── frontend/            # Proyecto de React (frontend)
├── build/               # Carpeta generada con los ABI y contratos compilados
├── truffle-config.js    # Archivo de configuración de Truffle
└── README.md            # Documentación del proyecto
```
Tecnologías Utilizadas
Solidity: Lenguaje de programación para contratos inteligentes.
Truffle: Framework de desarrollo para DApps.
Ganache: Blockchain local para pruebas.
React: Librería de JavaScript para el frontend.
Web3.js: Librería para interactuar con la blockchain desde JavaScript.
Contribuir

## Si deseas contribuir a este proyecto:

Haz un fork del repositorio.
Crea una nueva rama (git checkout -b feature/nueva-funcionalidad).
Realiza los cambios y haz commit (git commit -m 'Agregar nueva funcionalidad').
Haz push a tu rama (git push origin feature/nueva-funcionalidad).
Abre un Pull Request.
Licencia
Este proyecto está licenciado bajo la Licencia MIT - ver el archivo LICENSE para más detalles.

